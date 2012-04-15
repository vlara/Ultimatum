.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

.field private mClock:Landroid/preference/CheckBoxPreference;

.field private mClockPosition:Landroid/preference/ListPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mEnableLog:Z

.field private mFontSizePref:Landroid/preference/ListPreference;

.field private mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

.field private mHorizontalCalibration:Landroid/preference/PreferenceScreen;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

.field private mMode:Landroid/preference/PreferenceScreen;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private mPowerSavingMode:Landroid/preference/CheckBoxPreference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mTouchKeyLight:Landroid/preference/ListPreference;

.field private mWeather:Landroid/preference/CheckBoxPreference;

.field private mWeatherSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mEnableLog:Z

    .line 115
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 125
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private static AppServiceOff(I)I
    .registers 1
    .parameter "value"

    .prologue
    .line 600
    xor-int/lit8 p0, p0, 0x1

    .line 601
    return p0
.end method

.method private static AppServiceOn(I)I
    .registers 1
    .parameter "value"

    .prologue
    .line 595
    or-int/lit8 p0, p0, 0x1

    .line 596
    return p0
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .registers 15
    .parameter "screenTimeoutPreference"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 294
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1a

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 295
    .local v3, maxTimeout:J
    :goto_13
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_1d

    .line 322
    :goto_19
    return-void

    .line 294
    .end local v3           #maxTimeout:J
    :cond_1a
    const-wide/16 v3, 0x0

    goto :goto_13

    .line 298
    .restart local v3       #maxTimeout:J
    :cond_1d
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 299
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 300
    .local v10, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_30
    array-length v11, v10

    if-ge v2, v11, :cond_4e

    .line 303
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 304
    .local v7, timeout:J
    cmp-long v11, v7, v3

    if-gtz v11, :cond_4b

    .line 305
    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 309
    .end local v7           #timeout:J
    :cond_4e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_5c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_8e

    .line 310
    :cond_5c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 313
    .local v9, userPreference:I
    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_8e

    .line 314
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 321
    .end local v9           #userPreference:I
    :cond_8e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_99

    const/4 v11, 0x1

    :goto_95
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_19

    :cond_99
    const/4 v11, 0x0

    goto :goto_95
.end method

.method private updateAccelerometerRotationCheckbox()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 432
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 433
    return-void
.end method

.method private updateState()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 398
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "show_clock"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_90

    move v3, v4

    :goto_11
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "aw_daemon_service_key_app_service_status"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    and-int/lit8 v2, v3, 0x1

    .line 402
    .local v2, mAppLockScreen:I
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_9a

    .line 403
    if-ne v2, v4, :cond_92

    .line 404
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 407
    :goto_2b
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mClockPosition:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_3d

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_98

    :cond_3d
    :goto_3d
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 412
    :goto_40
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "clock_position"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 414
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mClockPosition:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    .line 417
    const-string v3, "GT-I9100"

    const-string v4, "GT-N7000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    const-string v3, "GT-I9100"

    const-string v4, "GT-I9220"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 418
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 428
    :goto_7a
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "button_key_light"

    const/16 v6, 0x5dc

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 429
    return-void

    .end local v2           #mAppLockScreen:I
    :cond_90
    move v3, v5

    .line 398
    goto :goto_11

    .line 406
    .restart local v2       #mAppLockScreen:I
    :cond_92
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2b

    :cond_98
    move v4, v5

    .line 407
    goto :goto_3d

    .line 409
    :cond_9a
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mClockPosition:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_40

    .line 420
    :cond_a6
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 422
    .local v0, fontsizeIndex:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, fontvalue:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_7a
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .registers 16
    .parameter "currentTimeout"

    .prologue
    .line 271
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 273
    .local v3, preference:Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_e

    .line 275
    const-string v4, ""

    .line 288
    .local v4, summary:Ljava/lang/String;
    :goto_a
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 289
    return-void

    .line 277
    .end local v4           #summary:Ljava/lang/String;
    :cond_e
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 278
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 279
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 280
    .local v0, best:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_18
    array-length v8, v7

    if-ge v2, v8, :cond_2d

    .line 281
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 282
    .local v5, timeout:J
    cmp-long v8, p1, v5

    if-ltz v8, :cond_2a

    .line 283
    move v0, v2

    .line 280
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 286
    .end local v5           #timeout:J
    :cond_2d
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b0335

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_a
.end method


# virtual methods
.method public checkNetwork()Z
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 583
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 584
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 585
    .local v3, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 586
    .local v2, isWifiAvail:Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 587
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 589
    .local v1, isMobileAvail:Z
    const-string v6, "DisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isWifiAvail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-nez v2, :cond_40

    if-eqz v1, :cond_41

    :cond_40
    move v4, v5

    :cond_41
    return v4
.end method

.method floatToIndex(F)I
    .registers 8
    .parameter "val"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, indices:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 327
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_13
    array-length v4, v1

    if-ge v0, v4, :cond_2d

    .line 328
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 329
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_29

    .line 330
    add-int/lit8 v4, v0, -0x1

    .line 334
    .end local v3           #thisVal:F
    :goto_28
    return v4

    .line 332
    .restart local v3       #thisVal:F
    :cond_29
    move v2, v3

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 334
    .end local v3           #thisVal:F
    :cond_2d
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_28
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 26
    .parameter "savedInstanceState"

    .prologue
    .line 154
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->mEnableLog:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 155
    const-string v20, "DisplaySettings"

    const-string v21, "DisplaySettings onCreate() start"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_f
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 160
    .local v18, resolver:Landroid/content/ContentResolver;
    const v20, 0x7f050010

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 162
    const-string v20, "clock"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mClock:Landroid/preference/CheckBoxPreference;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mClock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 165
    const-string v20, "weather"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mWeather:Landroid/preference/CheckBoxPreference;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mWeather:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 168
    const-string v20, "clock_position"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mClockPosition:Landroid/preference/ListPreference;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mClockPosition:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    const-string v20, "homescreen_wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    .line 172
    const-string v20, "lockscreen_wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    .line 173
    const-string v20, "weather_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    .line 174
    const-string v20, "accelerometer"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 177
    const-string v20, "brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/android/settings/BrightnessPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    .line 179
    const-string v20, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 180
    const-string v20, "screen_off_timeout"

    const-wide/16 v21, 0x7530

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 182
    .local v4, currentTimeout:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 185
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 187
    const-string v20, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    .line 188
    const-string v20, "GT-I9100"

    const-string v21, "GT-N7000"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_154

    const-string v20, "GT-I9100"

    const-string v21, "GT-I9220"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_160

    .line 189
    :cond_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const v21, 0x7f07000b

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 190
    :cond_160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    const-string v20, "notification_pulse"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_364

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x111001b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-nez v20, :cond_364

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    :goto_1a1
    const-string v20, "touch_key_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    const-string v20, "power_saving_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "power_saving_mode"

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_3a1

    const/16 v20, 0x1

    :goto_1ea
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 210
    const-string v20, "a_sensor"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mHorizontalCalibration:Landroid/preference/PreferenceScreen;

    .line 214
    const-string v20, "mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mMode:Landroid/preference/PreferenceScreen;

    .line 215
    const-string v20, "GT-I9100"

    const-string v21, "SHV-E110S"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_22c

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    :cond_22c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->mEnableLog:Z

    move/from16 v20, v0

    if-eqz v20, :cond_23b

    const-string v20, "DisplaySettings"

    const-string v21, "DisplaySettings onCreate() end"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_23b
    const-string v20, "GT-I9100"

    const-string v21, "GT-N7000"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_24f

    const-string v20, "GT-I9100"

    const-string v21, "GT-I9220"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3d7

    .line 228
    :cond_24f
    const-string v12, "com.android.calendar"

    .line 229
    .local v12, mPackageName_1:Ljava/lang/String;
    const-string v13, "com.sec.android.widgetapp.diotek.smemo"

    .line 230
    .local v13, mPackageName_2:Ljava/lang/String;
    const-string v14, "com.android.email"

    .line 231
    .local v14, mPackageName_3:Ljava/lang/String;
    const-string v15, "com.android.contacts"

    .line 232
    .local v15, mPackageName_4:Ljava/lang/String;
    const-string v16, "com.android.mms"

    .line 234
    .local v16, mPackageName_5:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 235
    .local v17, mPm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 236
    .local v7, info_1:Landroid/content/pm/ApplicationInfo;
    const/4 v8, 0x0

    .line 237
    .local v8, info_2:Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x0

    .line 238
    .local v9, info_3:Landroid/content/pm/ApplicationInfo;
    const/4 v10, 0x0

    .line 239
    .local v10, info_4:Landroid/content/pm/ApplicationInfo;
    const/4 v11, 0x0

    .line 242
    .local v11, info_5:Landroid/content/pm/ApplicationInfo;
    const/16 v20, 0x0

    :try_start_264
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 243
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 244
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 245
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 246
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_295
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_264 .. :try_end_295} :catch_3a5

    move-result-object v11

    .line 252
    if-eqz v7, :cond_363

    if-eqz v8, :cond_363

    if-eqz v9, :cond_363

    if-eqz v10, :cond_363

    if-eqz v11, :cond_363

    .line 254
    :try_start_2a0
    const-string v20, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0b07b4

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    const-string v20, "DisplaySettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Packages : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_363
    .catch Ljava/lang/RuntimeException; {:try_start_2a0 .. :try_end_363} :catch_3b2

    .line 268
    .end local v7           #info_1:Landroid/content/pm/ApplicationInfo;
    .end local v8           #info_2:Landroid/content/pm/ApplicationInfo;
    .end local v9           #info_3:Landroid/content/pm/ApplicationInfo;
    .end local v10           #info_4:Landroid/content/pm/ApplicationInfo;
    .end local v11           #info_5:Landroid/content/pm/ApplicationInfo;
    .end local v12           #mPackageName_1:Ljava/lang/String;
    .end local v13           #mPackageName_2:Ljava/lang/String;
    .end local v14           #mPackageName_3:Ljava/lang/String;
    .end local v15           #mPackageName_4:Ljava/lang/String;
    .end local v16           #mPackageName_5:Ljava/lang/String;
    .end local v17           #mPm:Landroid/content/pm/PackageManager;
    :cond_363
    :goto_363
    return-void

    .line 197
    :cond_364
    :try_start_364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "notification_light_pulse"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_39e

    const/16 v20, 0x1

    :goto_37e
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_392
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_364 .. :try_end_392} :catch_394

    goto/16 :goto_1a1

    .line 199
    :catch_394
    move-exception v19

    .line 200
    .local v19, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v20, "DisplaySettings"

    const-string v21, "notification_light_pulse not found"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a1

    .line 197
    .end local v19           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_39e
    const/16 v20, 0x0

    goto :goto_37e

    .line 208
    :cond_3a1
    const/16 v20, 0x0

    goto/16 :goto_1ea

    .line 247
    .restart local v7       #info_1:Landroid/content/pm/ApplicationInfo;
    .restart local v8       #info_2:Landroid/content/pm/ApplicationInfo;
    .restart local v9       #info_3:Landroid/content/pm/ApplicationInfo;
    .restart local v10       #info_4:Landroid/content/pm/ApplicationInfo;
    .restart local v11       #info_5:Landroid/content/pm/ApplicationInfo;
    .restart local v12       #mPackageName_1:Ljava/lang/String;
    .restart local v13       #mPackageName_2:Ljava/lang/String;
    .restart local v14       #mPackageName_3:Ljava/lang/String;
    .restart local v15       #mPackageName_4:Ljava/lang/String;
    .restart local v16       #mPackageName_5:Ljava/lang/String;
    .restart local v17       #mPm:Landroid/content/pm/PackageManager;
    :catch_3a5
    move-exception v6

    .line 249
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "DisplaySettings"

    const-string v21, "Package name is not found"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_363

    .line 257
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3b2
    move-exception v6

    .line 258
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v20, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b07b4

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 259
    const-string v20, "DisplaySettings"

    const-string v21, "ApplicationInfo is not found"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_363

    .line 265
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v7           #info_1:Landroid/content/pm/ApplicationInfo;
    .end local v8           #info_2:Landroid/content/pm/ApplicationInfo;
    .end local v9           #info_3:Landroid/content/pm/ApplicationInfo;
    .end local v10           #info_4:Landroid/content/pm/ApplicationInfo;
    .end local v11           #info_5:Landroid/content/pm/ApplicationInfo;
    .end local v12           #mPackageName_1:Ljava/lang/String;
    .end local v13           #mPackageName_2:Ljava/lang/String;
    .end local v14           #mPackageName_3:Ljava/lang/String;
    .end local v15           #mPackageName_4:Ljava/lang/String;
    .end local v16           #mPackageName_5:Ljava/lang/String;
    .end local v17           #mPm:Landroid/content/pm/PackageManager;
    :cond_3d7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_363
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 388
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 395
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 14
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 513
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, key:Ljava/lang/String;
    const-string v6, "clock_position"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 515
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 517
    .local v5, value:I
    :try_start_15
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "clock_position"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 520
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mClockPosition:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 521
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mClockPosition:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_32} :catch_33

    .line 579
    .end local v5           #value:I
    :cond_32
    :goto_32
    return v10

    .line 522
    .restart local v5       #value:I
    :catch_33
    move-exception v0

    .line 523
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "DisplaySettings"

    const-string v7, "could not persist Clock position value"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 525
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v5           #value:I
    .restart local p2
    :cond_3c
    const-string v6, "screen_timeout"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 526
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 528
    .restart local v5       #value:I
    :try_start_4a
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_off_timeout"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 529
    int-to-long v6, v5

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 530
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_65} :catch_66

    goto :goto_32

    .line 532
    .end local v2           #i:Landroid/content/Intent;
    :catch_66
    move-exception v0

    .line 533
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v6, "DisplaySettings"

    const-string v7, "could not persist screen timeout setting"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 535
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v5           #value:I
    .restart local p2
    :cond_6f
    const-string v6, "font_size"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_156

    .line 537
    const-string v6, "GT-I9100"

    const-string v7, "GT-N7000"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8b

    const-string v6, "GT-I9100"

    const-string v7, "GT-I9220"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 539
    :cond_8b
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 540
    .restart local v5       #value:I
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "font_size"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 541
    const-string v6, "DisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceChange : fontsize =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .restart local v2       #i:Landroid/content/Intent;
    const-string v6, "font_size"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 545
    if-eqz v5, :cond_c9

    if-ne v5, v10, :cond_d7

    .line 546
    :cond_c9
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b08e4

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 549
    :cond_d7
    const-string v6, "DisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.settings.FONT_SIZE_CHANGED broadcast. extra(font_size) : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .end local v2           #i:Landroid/content/Intent;
    .end local v5           #value:I
    .restart local p2
    :cond_f1
    move-object v6, p2

    .line 552
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->floatToIndex(F)I

    move-result v1

    .line 553
    .local v1, fontIndex:I
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "font_size"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 554
    .local v4, previousIndex:I
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "font_size"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 555
    if-ge v4, v8, :cond_137

    if-ne v1, v8, :cond_137

    .line 556
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .restart local v2       #i:Landroid/content/Intent;
    const-string v6, "large_font"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 559
    const-string v6, "DisplaySettings"

    const-string v7, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v2           #i:Landroid/content/Intent;
    :cond_12d
    :goto_12d
    invoke-virtual {p0, p2}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 568
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    goto/16 :goto_32

    .line 560
    :cond_137
    if-ne v4, v8, :cond_12d

    if-ge v1, v8, :cond_12d

    .line 561
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .restart local v2       #i:Landroid/content/Intent;
    const-string v6, "large_font"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 564
    const-string v6, "DisplaySettings"

    const-string v7, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d

    .line 570
    .end local v1           #fontIndex:I
    .end local v2           #i:Landroid/content/Intent;
    .end local v4           #previousIndex:I
    :cond_156
    const-string v6, "touch_key_light"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 571
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 573
    .restart local v5       #value:I
    :try_start_164
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "button_key_light"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 574
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_176
    .catch Ljava/lang/NumberFormatException; {:try_start_164 .. :try_end_176} :catch_178

    goto/16 :goto_32

    .line 575
    :catch_178
    move-exception v0

    .line 576
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v6, "DisplaySettings"

    const-string v7, "could not persist Touch key light setting"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 16
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 455
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 456
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v5, pickWallpaper:Landroid/content/Intent;
    const v8, 0x7f0b06e4

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    .line 509
    .end local v5           #pickWallpaper:Landroid/content/Intent;
    :cond_1f
    :goto_1f
    return v9

    .line 459
    :cond_20
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f

    .line 461
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "show_clock"

    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_49

    :goto_3e
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 463
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 509
    :cond_44
    :goto_44
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    goto :goto_1f

    :cond_49
    move v8, v9

    .line 462
    goto :goto_3e

    .line 464
    :cond_4b
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_de

    .line 465
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_6f

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->checkNetwork()Z

    move-result v10

    if-nez v10, :cond_6f

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b0736

    invoke-static {v10, v11, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 467
    :cond_6f
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_9d

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "network"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9d

    .line 468
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "network"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 470
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .local v2, gpsOptionIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    move v9, v8

    .line 472
    goto :goto_1f

    .line 475
    .end local v2           #gpsOptionIntent:Landroid/content/Intent;
    :cond_9d
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_cf

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Lcom/android/settings/DisplaySettings;->AppServiceOn(I)I

    move-result v4

    .line 480
    .local v4, mAppServiceStatus:I
    :goto_b3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_app_service_status"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 482
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    goto/16 :goto_44

    .line 478
    .end local v4           #mAppServiceStatus:I
    :cond_cf
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Lcom/android/settings/DisplaySettings;->AppServiceOff(I)I

    move-result v4

    .restart local v4       #mAppServiceStatus:I
    goto :goto_b3

    .line 483
    .end local v4           #mAppServiceStatus:I
    :cond_de
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_109

    .line 484
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 485
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string v9, "SETTING_MODE"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    new-instance v0, Landroid/content/ComponentName;

    const-string v8, "com.sec.android.daemonapp.accuweather"

    const-string v9, "com.sec.android.daemonapp.accuweather.MenuSettings"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 489
    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_44

    .line 490
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_109
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_134

    .line 492
    :try_start_10d
    const-string v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    .line 493
    .local v7, wm:Landroid/view/IWindowManager;
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_12e

    .line 494
    invoke-interface {v7}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_122
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_122} :catch_124

    goto/16 :goto_44

    .line 498
    .end local v7           #wm:Landroid/view/IWindowManager;
    :catch_124
    move-exception v1

    .line 499
    .local v1, exc:Landroid/os/RemoteException;
    const-string v8, "DisplaySettings"

    const-string v9, "Unable to save auto-rotate setting"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 496
    .end local v1           #exc:Landroid/os/RemoteException;
    .restart local v7       #wm:Landroid/view/IWindowManager;
    :cond_12e
    const/4 v8, 0x0

    :try_start_12f
    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_132
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_132} :catch_124

    goto/16 :goto_44

    .line 501
    .end local v7           #wm:Landroid/view/IWindowManager;
    :cond_134
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_14d

    .line 502
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    .line 503
    .local v6, value:Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "notification_light_pulse"

    if-eqz v6, :cond_147

    move v9, v8

    :cond_147
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v9, v8

    .line 504
    goto/16 :goto_1f

    .line 505
    .end local v6           #value:Z
    :cond_14d
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "power_saving_mode"

    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_171

    :goto_163
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 507
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    invoke-static {v8}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)V

    goto/16 :goto_44

    :cond_171
    move v8, v9

    .line 506
    goto :goto_163
.end method

.method public onResume()V
    .registers 8

    .prologue
    .line 365
    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->mEnableLog:Z

    if-eqz v3, :cond_b

    const-string v3, "DisplaySettings"

    const-string v4, "DisplaySettings onResume() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_b
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 368
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 370
    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->mEnableLog:Z

    if-eqz v3, :cond_2c

    const-string v3, "DisplaySettings"

    const-string v4, "DisplaySettings onResume() end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_2c
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 374
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    const-string v3, "DisplaySettings"

    const-string v4, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    const-wide/16 v5, 0x7530

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 380
    .local v0, currentTimeout:J
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 381
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 382
    invoke-direct {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 384
    return-void
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .registers 11
    .parameter "pref"

    .prologue
    const/4 v8, 0x0

    .line 339
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_93

    .line 345
    :goto_e
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->floatToIndex(F)I

    move-result v3

    .line 347
    .local v3, index:I
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : font index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 349
    .local v1, fontIndex:I
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : Settings.System.FONT_SIZE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v5, 0x3

    if-ne v3, v5, :cond_6f

    const/4 v5, 0x4

    if-ne v1, v5, :cond_6f

    .line 351
    const/4 v3, 0x4

    .line 352
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : Extra large font. index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_6f
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 359
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, fontSizeNames:[Ljava/lang/String;
    const v5, 0x7f0b0343

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v2, v3

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 361
    return-void

    .line 340
    .end local v1           #fontIndex:I
    .end local v2           #fontSizeNames:[Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #res:Landroid/content/res/Resources;
    :catch_93
    move-exception v0

    .line 341
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "DisplaySettings"

    const-string v6, "Unable to retrieve font size"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .registers 7
    .parameter "objValue"

    .prologue
    .line 438
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 439
    .local v1, fontScale:F
    const-string v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/high16 v2, 0x3fc0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_41

    .line 441
    const v1, 0x3fa66666

    .line 442
    const-string v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_41
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 447
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4e} :catch_4f

    .line 451
    .end local v1           #fontScale:F
    :goto_4e
    return-void

    .line 448
    :catch_4f
    move-exception v0

    .line 449
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DisplaySettings"

    const-string v3, "Unable to save font size"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method
