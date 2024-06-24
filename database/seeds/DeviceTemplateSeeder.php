<?php

use Illuminate\Database\Seeder;

class DeviceTemplateSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $name = ["template_1",'template_2','template_3','template_4','template_5', 'template_6', 'template_7', 'template_8', 'template_9','template_10','template_11','template_12' ,'template_13', 'template_14','template_15', 'template_16','template_17', 'template_18', 'template_19', 'template_20', 'template_21', 'template_22', 'template_23', 'template_24', 'template_25', 'template_26', 'template_27', 'template_28', 'template_29', 'template_30', 'template_31','template_32'];

        $logo_required = [1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0];
        
        $ticker_text = [1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1];

        $images_required = [0,0,0,0,1,1,1,1,0,0,0,0,2,2,2,2,0,0,0,0,4,4,4,4,1,1,1,1,2,2,2,2];
        $video_required = [1,1,1,1,0,0,0,0,2,2,2,2,0,0,0,0,4,4,4,4,0,0,0,0,2,2,2,2,1,1,1,1,];

        $ppt_required = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
        $rss_feed_required = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
        $quebox_required = [1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1];
        $template_image = [
            "template_images/1.png",
            "template_images/2.png",
            "template_images/3.png",
            "template_images/4.png",
            "template_images/5.png",
            "template_images/6.png",
            "template_images/7.png",
            "template_images/8.png",
            "template_images/9.png",
            "template_images/10.png",
            "template_images/11.png",
            "template_images/12.png",
            "template_images/13.png",
            "template_images/14.png",
            "template_images/15.png",
            "template_images/16.png",
            "template_images/17.png",
            "template_images/18.png",
            "template_images/19.png",
            "template_images/20.png",
            "template_images/21.png",
            "template_images/22.png",
            "template_images/23.png",
            "template_images/24.png",
            "template_images/25.png",
            "template_images/26.png",
            "template_images/27.png",
            "template_images/28.png",
            "template_images/29.png",
            "template_images/30.png",
            "template_images/31.png",
            "template_images/32.png",
        ];

        foreach ($name as $key => $n){
            $device_template = new \App\DeviceTemplates();
            $device_template->name = $n;
            $device_template->quebox_required = $quebox_required[$key];
            $device_template->logo_required = $logo_required[$key];
            $device_template->ticker_text_required = $ticker_text[$key];
            $device_template->images_required = $images_required[$key];
            $device_template->videos_required = $video_required[$key];
            $device_template->ppt_required = $ppt_required[$key];
            $device_template->template_images = $template_image[$key];
            $device->rss_feed_required = $rss_feed_required[$key];
            $device_template->save();
        }

    }
}
