<?php
namespace App\Http\Middleware;
use Closure;
use App\ApiLog;
use App\User;
class ApiDataLogger
{
    private $startTime;
    protected $logId;
    protected $callObj;

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $user = User::where('email', $request->email)->first();
        $this->callObj = (object)array();
        $this->startTime = microtime(true);
        $requestData = $request->all();
        if (!isset($requestData['image'])) {
            $record = ApiLog::create([
                'url' => $request->fullUrl(),
                'params' => is_array($request->all()) ? json_encode($request->all()) : '',
                'ip' => request()->ip(),
                'method' => $request->method(),
                'call_time' => gmdate("F j, Y, g:i a"),
                'request_content' => json_encode($requestData),
                'user_id' => isset($user)?$user->id : null,
                'organization_id'=> isset($user)?$user->organization_id : null,
                'user_agent' => $request->server('HTTP_USER_AGENT')
            ]);

            $this->logId = $record->id;

            $this->callObj = ApiLog::where([
                'id' => $this->logId
            ])->get()->first();


        }


        return $next($request);
        // return true;
    }

    public function terminate($request, $response)
    {
        $endTime = microtime(true);
        $requestData = $request->all();
        if (!isset($requestData['image']) && isset($this->callObj)) {
            $this->callObj->response_content = $response->getContent();
            $this->callObj->duration = number_format($endTime - LARAVEL_START, 3);
            $this->callObj->response_code = $response->status();
            $this->callObj->save();
        }

    }
}
