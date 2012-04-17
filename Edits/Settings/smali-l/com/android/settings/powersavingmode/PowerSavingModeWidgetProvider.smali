.class public Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static mContext:Landroid/content/Context;

.field private static mIsAirplaneModeOn:I

.field private static mIsBatteryStateLow:I

.field private static mIsfirstPanel:Z

.field private static mRP:Landroid/app/enterprise/IRestrictionPolicy;

.field private static final sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private static sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

.field private static final sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 56
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.powersavingmode.PowerSavingModeWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 59
    sput-object v3, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 103
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 105
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 107
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 109
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 114
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsfirstPanel:Z

    .line 116
    sput v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsAirplaneModeOn:I

    .line 124
    sput v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsBatteryStateLow:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 1144
    return-void
.end method

.method static synthetic access$500()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-object p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 582
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040064

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 584
    const v1, 0x7f08011b

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 586
    const v1, 0x7f08011f

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 588
    const v1, 0x7f080123

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 590
    const v1, 0x7f08012c

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 592
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 594
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 597
    const v2, 0x7f080135

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 598
    const v1, 0x7f080127

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 600
    const v1, 0x7f08012f

    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 603
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.powersavingmode.PowerSavingModeTips"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 607
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 608
    const v2, 0x7f080132

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 609
    invoke-static {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 610
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 533
    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    if-nez v0, :cond_19

    .line 534
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    .line 536
    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;->startObserving()V

    .line 538
    :cond_19
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    .line 988
    const/4 v0, 0x0

    .line 990
    .local v0, brightness:I
    :try_start_1
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 992
    .local v3, power:Landroid/os/IPowerManager;
    if-eqz v3, :cond_4a

    .line 993
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 995
    const-string v4, "powersaving modewidget provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightness brightness= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_31

    move v1, v0

    .line 1001
    .end local v0           #brightness:I
    .end local v3           #power:Landroid/os/IPowerManager;
    .local v1, brightness:I
    :goto_30
    return v1

    .line 998
    .end local v1           #brightness:I
    .restart local v0       #brightness:I
    :catch_31
    move-exception v2

    .line 999
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "PowerSavingModeWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/Exception;
    :cond_4a
    move v1, v0

    .line 1001
    .end local v0           #brightness:I
    .restart local v1       #brightness:I
    goto :goto_30
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1012
    :try_start_2
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 1014
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_36

    .line 1015
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_1d

    move-result v0

    .line 1017
    .local v0, brightnessMode:I
    if-ne v0, v3, :cond_1b

    .line 1022
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_1a
    return v3

    .restart local v0       #brightnessMode:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_1b
    move v3, v4

    .line 1017
    goto :goto_1a

    .line 1019
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_1d
    move-exception v1

    .line 1020
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PowerSavingModeWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightnessMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_36
    move v3, v4

    .line 1022
    goto :goto_1a
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 966
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 967
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 817
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 818
    const-class v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 819
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 821
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 828
    return-object v0
.end method

.method private static getScreentimeout(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 1098
    const/16 v1, 0x7530

    .line 1100
    .local v1, screentimeout:I
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_b} :catch_d

    move-result v1

    .line 1105
    :goto_c
    return v1

    .line 1102
    :catch_d
    move-exception v0

    .line 1103
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PowerSavingModeWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreentimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private static getSync(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 919
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 920
    .local v0, sync:Z
    return v0
.end method

.method public static setBatteryState(I)V
    .locals 0
    .parameter "batteyrState"

    .prologue
    .line 1140
    sput p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsBatteryStateLow:I

    .line 1141
    return-void
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 1035
    :try_start_1
    sget-object v5, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    if-nez v5, :cond_11

    .line 1036
    const-string v5, "restriction_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v5

    sput-object v5, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    .line 1038
    :cond_11
    sget-object v5, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_1b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_17} :catch_95

    move-result v5

    if-nez v5, :cond_1f

    .line 1095
    :cond_1a
    :goto_1a
    return-void

    .line 1041
    :catch_1b
    move-exception v3

    .line 1042
    .local v3, e:Landroid/os/RemoteException;
    :try_start_1c
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1045
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_1f
    sget v5, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsBatteryStateLow:I

    if-ne v5, v7, :cond_45

    .line 1046
    const-string v5, "PowerSavingModeWidgetProvider"

    const-string v6, "Battery Level is critical low "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2a} :catch_2b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1c .. :try_end_2a} :catch_95

    goto :goto_1a

    .line 1090
    :catch_2b
    move-exception v3

    .line 1091
    .restart local v3       #e:Landroid/os/RemoteException;
    const-string v5, "PowerSavingModeWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 1050
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_45
    :try_start_45
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 1052
    .local v4, power:Landroid/os/IPowerManager;
    if-eqz v4, :cond_1a

    .line 1053
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1054
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1055
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 1057
    .local v1, brightnessMode:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 1059
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1064
    :cond_6f
    if-ne v1, v7, :cond_b0

    .line 1065
    const/16 v0, 0x1e

    .line 1066
    const/4 v1, 0x0

    .line 1075
    :goto_74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 1078
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1085
    :goto_8a
    if-nez v1, :cond_1a

    .line 1086
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 1087
    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_94} :catch_2b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_45 .. :try_end_94} :catch_95

    goto :goto_1a

    .line 1092
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_95
    move-exception v3

    .line 1093
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "PowerSavingModeWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 1067
    .end local v3           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #power:Landroid/os/IPowerManager;
    :cond_b0
    const/16 v5, 0x66

    if-ge v0, v5, :cond_b7

    .line 1068
    const/16 v0, 0x66

    goto :goto_74

    .line 1069
    :cond_b7
    const/16 v5, 0xff

    if-ge v0, v5, :cond_be

    .line 1070
    const/16 v0, 0xff

    goto :goto_74

    .line 1072
    :cond_be
    const/4 v1, 0x1

    .line 1073
    const/16 v0, 0x1e

    goto :goto_74

    .line 1083
    :cond_c2
    const/4 v1, 0x0

    goto :goto_8a
.end method

.method private toogleScreentimeout(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 1113
    :try_start_0
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    if-nez v4, :cond_10

    .line 1114
    const-string v4, "restriction_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v4

    sput-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    .line 1116
    :cond_10
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_1a

    move-result v4

    if-nez v4, :cond_1e

    .line 1137
    :cond_19
    :goto_19
    return-void

    .line 1119
    :catch_1a
    move-exception v0

    .line 1120
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1123
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1e
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getScreentimeout(Landroid/content/Context;)I

    move-result v2

    .line 1124
    .local v2, screentimeout:I
    const/4 v4, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_52

    .line 1127
    .local v3, timeTable:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    array-length v4, v3

    if-ge v1, v4, :cond_19

    .line 1128
    aget v4, v3, v1

    if-ne v2, v4, :cond_43

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_43

    .line 1129
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    add-int/lit8 v6, v1, 0x1

    aget v6, v3, v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_19

    .line 1133
    :cond_43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1127
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1124
    :array_52
    .array-data 0x4
        0x98t 0x3at 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0xc0t 0x27t 0x9t 0x0t
    .end array-data
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 9
    .parameter "views"
    .parameter "context"

    .prologue
    const v8, 0x7f020111

    const v7, 0x7f020110

    const v6, 0x7f0a000e

    const/4 v5, 0x0

    const v4, 0x7f0a000d

    .line 635
    const v1, 0x7f08011b

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 636
    const v1, 0x7f08011f

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 637
    const v1, 0x7f080123

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 638
    const v1, 0x7f080135

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 639
    const v1, 0x7f080127

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 640
    const v1, 0x7f08012f

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 641
    const v1, 0x7f080132

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 642
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_32a

    .line 674
    :pswitch_40
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : WiFi state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_5e
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1a1

    .line 678
    const v1, 0x7f08012d

    const v2, 0x7f0200b7

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 679
    const v1, 0x7f08012e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 694
    :goto_7b
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getSync(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1fc

    .line 695
    const v1, 0x7f080128

    const v2, 0x7f0200d2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 696
    const v1, 0x7f080129

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 697
    const v1, 0x7f08012a

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 703
    :goto_9e
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getGpsState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_21b

    .line 704
    const v1, 0x7f080124

    const v2, 0x7f0200c2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 705
    const v1, 0x7f080125

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 706
    const v1, 0x7f080126

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 712
    :goto_c1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsAirplaneModeOn:I

    .line 714
    sget v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsAirplaneModeOn:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23a

    .line 715
    const v1, 0x7f080120

    const v2, 0x7f0200b5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 716
    const v1, 0x7f080121

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 718
    const v1, 0x7f080122

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 766
    :goto_ef
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getScreentimeout(Landroid/content/Context;)I

    move-result v0

    .line 767
    .local v0, screentimeout:I
    sparse-switch v0, :sswitch_data_33a

    .line 793
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : screentimeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :goto_10e
    const v1, 0x7f080131

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 807
    return-void

    .line 644
    .end local v0           #screentimeout:I
    :pswitch_11d
    const v1, 0x7f08011c

    const v2, 0x7f0200d5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 645
    const v1, 0x7f08011d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 647
    const v1, 0x7f08011e

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5e

    .line 650
    :pswitch_13c
    const v1, 0x7f08011c

    const v2, 0x7f0200d6

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 651
    const v1, 0x7f08011d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 653
    const v1, 0x7f08011e

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5e

    .line 661
    :pswitch_15b
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_182

    .line 662
    const v1, 0x7f08011c

    const v2, 0x7f0200d6

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 663
    const v1, 0x7f08011d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 665
    const v1, 0x7f08011e

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5e

    .line 667
    :cond_182
    const v1, 0x7f08011c

    const v2, 0x7f0200d5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 668
    const v1, 0x7f08011d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 670
    const v1, 0x7f08011e

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5e

    .line 681
    :cond_1a1
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1c2

    .line 682
    const v1, 0x7f08012d

    const v2, 0x7f0200bf

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 683
    const v1, 0x7f08012e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_7b

    .line 685
    :cond_1c2
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x66

    if-lt v1, v2, :cond_1e3

    .line 686
    const v1, 0x7f08012d

    const v2, 0x7f0200be

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 687
    const v1, 0x7f08012e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_7b

    .line 690
    :cond_1e3
    const v1, 0x7f08012d

    const v2, 0x7f0200bb

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 691
    const v1, 0x7f08012e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_7b

    .line 699
    :cond_1fc
    const v1, 0x7f080128

    const v2, 0x7f0200d1

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 700
    const v1, 0x7f080129

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 701
    const v1, 0x7f08012a

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_9e

    .line 708
    :cond_21b
    const v1, 0x7f080124

    const v2, 0x7f0200c1

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 709
    const v1, 0x7f080125

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 710
    const v1, 0x7f080126

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_c1

    .line 720
    :cond_23a
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_354

    .line 753
    :pswitch_243
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : BT state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ef

    .line 722
    :pswitch_263
    const v1, 0x7f080120

    const v2, 0x7f0200b5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 723
    const v1, 0x7f080121

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 725
    const v1, 0x7f080122

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_ef

    .line 728
    :pswitch_282
    const v1, 0x7f080120

    const v2, 0x7f0200b6

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 729
    const v1, 0x7f080121

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 731
    const v1, 0x7f080122

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_ef

    .line 739
    :pswitch_2a1
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_2c8

    .line 740
    const v1, 0x7f080120

    const v2, 0x7f0200b6

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 741
    const v1, 0x7f080121

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 743
    const v1, 0x7f080122

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_ef

    .line 745
    :cond_2c8
    const v1, 0x7f080120

    const v2, 0x7f0200b5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 747
    const v1, 0x7f080121

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 749
    const v1, 0x7f080122

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_ef

    .line 769
    .restart local v0       #screentimeout:I
    :sswitch_2e7
    const v1, 0x7f080130

    const v2, 0x7f0200c9

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_10e

    .line 773
    :sswitch_2f2
    const v1, 0x7f080130

    const v2, 0x7f0200cc

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_10e

    .line 777
    :sswitch_2fd
    const v1, 0x7f080130

    const v2, 0x7f0200ca

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_10e

    .line 781
    :sswitch_308
    const v1, 0x7f080130

    const v2, 0x7f0200cb

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_10e

    .line 785
    :sswitch_313
    const v1, 0x7f080130

    const v2, 0x7f0200cd

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_10e

    .line 789
    :sswitch_31e
    const v1, 0x7f080130

    const v2, 0x7f0200c8

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_10e

    .line 642
    nop

    :pswitch_data_32a
    .packed-switch 0x0
        :pswitch_11d
        :pswitch_13c
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_15b
    .end packed-switch

    .line 767
    :sswitch_data_33a
    .sparse-switch
        0x3a98 -> :sswitch_2e7
        0x7530 -> :sswitch_2f2
        0xea60 -> :sswitch_2fd
        0x1d4c0 -> :sswitch_308
        0x493e0 -> :sswitch_313
        0x927c0 -> :sswitch_31e
    .end sparse-switch

    .line 720
    :pswitch_data_354
    .packed-switch 0x0
        :pswitch_263
        :pswitch_282
        :pswitch_243
        :pswitch_243
        :pswitch_243
        :pswitch_2a1
    .end packed-switch
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 619
    invoke-static {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 622
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 623
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 624
    invoke-static {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 625
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 565
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 566
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".powersavingmode.PowerSavingModeWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 569
    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_1e

    .line 570
    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;->stopObserving()V

    .line 571
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    .line 574
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 575
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 576
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 553
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 554
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".powersavingmode.PowerSavingModeWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 557
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 559
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 561
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 839
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 840
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 842
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 909
    :cond_15
    :goto_15
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 910
    :cond_18
    return-void

    .line 843
    :cond_19
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 844
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_15

    .line 845
    :cond_27
    const-string v4, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 846
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_15

    .line 857
    :cond_35
    const-string v4, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    sget-object v4, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 860
    :cond_49
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 862
    new-instance v3, Landroid/content/Intent;

    const-string v4, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 864
    .local v3, intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_15

    .line 865
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_59
    const-string v4, "android.settings.BRIGHTNESS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 866
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_15

    .line 867
    :cond_65
    const-string v4, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 868
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_15

    .line 869
    :cond_71
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 870
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_15

    .line 871
    :cond_7d
    const-string v4, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 872
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 873
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 874
    .local v1, buttonId:I
    if-ne v1, v5, :cond_9a

    .line 875
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_15

    .line 876
    :cond_9a
    const/4 v4, 0x2

    if-ne v1, v4, :cond_b5

    .line 877
    sget v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsAirplaneModeOn:I

    if-ne v4, v5, :cond_ae

    .line 878
    const v4, 0x7f0b0243

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_15

    .line 881
    :cond_ae
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_15

    .line 883
    :cond_b5
    const/4 v4, 0x3

    if-ne v1, v4, :cond_bf

    .line 884
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_15

    .line 886
    :cond_bf
    const/4 v4, 0x4

    if-ne v1, v4, :cond_c7

    .line 887
    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto/16 :goto_15

    .line 888
    :cond_c7
    const/4 v4, 0x5

    if-ne v1, v4, :cond_db

    .line 889
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 891
    new-instance v3, Landroid/content/Intent;

    const-string v4, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .restart local v3       #intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_15

    .line 894
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_db
    const/4 v4, 0x6

    if-ne v1, v4, :cond_15

    .line 895
    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->toogleScreentimeout(Landroid/content/Context;)V

    goto/16 :goto_15

    .line 897
    .end local v1           #buttonId:I
    .end local v2           #data:Landroid/net/Uri;
    :cond_e3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED_FROM_WIDGET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 900
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_15
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 542
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mContext:Landroid/content/Context;

    .line 544
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 546
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v2, p3

    if-ge v0, v2, :cond_16

    .line 547
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 549
    :cond_16
    return-void
.end method
