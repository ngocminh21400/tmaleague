<?php

return [
    'class' => 'yii\db\Connection',
    'dsn' => 'mysql:host=127.0.0.1;dbname=sgtn_18244028_euro2016',
    'username' => 'whoareyou',
    'password' => 'UA6AkYn7JgQfMFXd',
    'charset' => 'utf8',
    'on afterOpen' => function($event) {
                $event->sender->createCommand("SET time_zone = '+7:00'")->execute();
            }
];
