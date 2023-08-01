<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterDaySlotsTableForSlotType extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('day_slots', function (Blueprint $table) {
            $table->enum('slot_type', ['0', '1', '2'])
                ->default('0')
                ->comment('0 All Day, 1 Specific Day, 2 Closed Day')
                ->after('is_closed');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('day_slots', function (Blueprint $table) {
            //
        });
    }
}
