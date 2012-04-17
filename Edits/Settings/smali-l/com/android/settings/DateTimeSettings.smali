.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DateTimeSettings$SettingsObserver;
    }
.end annotation


# instance fields
.field private isFirstRun:Z

.field private mAutoTimePref:Landroid/preference/CheckBoxPreference;

.field private mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;

.field private mHideTime:Landroid/preference/Preference;

.field private mHideAmPm:Landroid/preference/Preference;



# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 562
    new-instance v0, Lcom/android/settings/DateTimeSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$3;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettings;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    return-object v0
.end method

.method private static formatOffset(I)[C
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 534
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 536
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 537
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 538
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 539
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 541
    if-gez p0, :cond_4a

    .line 542
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 543
    neg-int p0, p0

    .line 548
    :goto_1f
    div-int/lit8 v1, p0, 0x3c

    .line 549
    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .line 551
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 552
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 554
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 556
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 557
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 559
    return-object v0

    .line 545
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_4a
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_1f
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 486
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_8} :catch_d

    move-result v2

    if-lez v2, :cond_c

    const/4 v1, 0x1

    .line 488
    :cond_c
    :goto_c
    return v1

    .line 487
    :catch_d
    move-exception v0

    .line 488
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_c
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 4
    .parameter "tz"

    .prologue
    .line 522
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 523
    .local v0, daylight:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    :goto_18
    add-int/2addr v2, v3

    invoke-static {v2}, Lcom/android/settings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 525
    :cond_34
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private initUI()V
    .locals 11

    .prologue
    const v10, 0x7f070001

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 151
    const-string v6, "auto_time"

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    .line 152
    .local v0, autoTimeEnabled:Z
    const-string v6, "auto_time_zone"

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 154
    .local v1, autoTimeZoneEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 155
    .local v5, intent:Landroid/content/Intent;
    const-string v6, "firstRun"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/DateTimeSettings;->isFirstRun:Z

    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 159
    const-string v6, "auto_time"

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    .line 160
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    const-string v6, "auto_zone"

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4e

    iget-boolean v6, p0, Lcom/android/settings/DateTimeSettings;->isFirstRun:Z

    if-eqz v6, :cond_58

    .line 165
    :cond_4e
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    const/4 v1, 0x0

    .line 168
    :cond_58
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    const-string v6, "time"

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 171
    const-string v6, "24 hour"

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 172
    const-string v6, "timezone"

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 173
    const-string v6, "date"

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 174
    const-string v6, "date_format"

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    .line 175
    iget-boolean v6, p0, Lcom/android/settings/DateTimeSettings;->isFirstRun:Z

    if-eqz v6, :cond_9d

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    :cond_9d
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, dateFormats:[Ljava/lang/String;
    array-length v6, v3

    new-array v4, v6, [Ljava/lang/String;

    .line 182
    .local v4, formattedDates:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, currentFormat:Ljava/lang/String;
    if-nez v2, :cond_b0

    .line 186
    const-string v2, ""

    .line 202
    :cond_b0
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    const/high16 v9, 0x7f07

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 203
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v6, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 204
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 206
    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_d9

    move v6, v7

    :goto_c6
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 207
    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_db

    move v6, v7

    :goto_ce
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 208
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_dd

    :goto_d5
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v6, "hide_time"

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mHideTime:Landroid/preference/Preference;
        
    const-string v6, "hide_ampm"

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mHideAmPm:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mHideTime:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :no_disablebtns
        
    const/4 v0, 0x0
        
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mHideAmPm:Landroid/preference/Preference;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V
        
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V
        
    :no_disablebtns 
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0
        
    if-eqz v0, :no_disableampm

    const/4 v0, 0x0
        
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mHideAmPm:Landroid/preference/Preference;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V
        
    :no_disableampm

    .line 209
    return-void

    :cond_d9
    move v6, v8

    .line 206
    goto :goto_c6

    :cond_db
    move v6, v8

    .line 207
    goto :goto_ce

    :cond_dd
    move v7, v8

    .line 208
    goto :goto_d5
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .parameter "is24Hour"

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_e

    const-string v0, "24"

    :goto_a
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 477
    return-void

    .line 474
    :cond_e
    const-string v0, "12"

    goto :goto_a
.end method

.method static setDate(III)V
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 495
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 497
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 498
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 499
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 500
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 502
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_22

    .line 503
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 505
    :cond_22
    return-void
.end method

.method static setTime(II)V
    .locals 7
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v4, 0x0

    .line 508
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 510
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 511
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 512
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 513
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 514
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 516
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_2b

    .line 517
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 519
    :cond_2b
    return-void
.end method

.method private timeUpdated()V
    .locals 2

    .prologue
    .line 463
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, timeChanged:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 465
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 460
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 135
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 138
    new-instance v0, Lcom/android/settings/DateTimeSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DateTimeSettings$SettingsObserver;-><init>(Lcom/android/settings/DateTimeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    .line 140
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x1

    .line 332
    packed-switch p1, :pswitch_data_ae

    .line 407
    const/4 v0, 0x0

    .line 411
    .local v0, d:Landroid/app/Dialog;
    :goto_7
    return-object v0

    .line 334
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 335
    .local v6, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 342
    .restart local v0       #d:Landroid/app/Dialog;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 343
    .local v8, mTime:Landroid/text/format/Time;
    const/4 v1, 0x0

    const/16 v2, 0x7d0

    invoke-virtual {v8, v9, v1, v2}, Landroid/text/format/Time;->set(III)V

    move-object v7, v0

    .line 344
    check-cast v7, Landroid/app/DatePickerDialog;

    .line 345
    .local v7, mDatePickerDialog:Landroid/app/DatePickerDialog;
    invoke-virtual {v7}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 347
    const/16 v1, 0x1f

    const/16 v2, 0x7f4

    invoke-virtual {v8, v1, v10, v2}, Landroid/text/format/Time;->set(III)V

    .line 348
    invoke-virtual {v7}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    goto :goto_7

    .line 353
    .end local v0           #d:Landroid/app/Dialog;
    .end local v6           #calendar:Ljava/util/Calendar;
    .end local v7           #mDatePickerDialog:Landroid/app/DatePickerDialog;
    .end local v8           #mTime:Landroid/text/format/Time;
    :pswitch_50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 354
    .restart local v6       #calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 360
    .restart local v0       #d:Landroid/app/Dialog;
    goto :goto_7

    .line 363
    .end local v0           #d:Landroid/app/Dialog;
    .end local v6           #calendar:Ljava/util/Calendar;
    :pswitch_71
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b087b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b087c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b008c

    new-instance v3, Lcom/android/settings/DateTimeSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/DateTimeSettings$2;-><init>(Lcom/android/settings/DateTimeSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b008d

    new-instance v3, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 404
    .restart local v0       #d:Landroid/app/Dialog;
    goto/16 :goto_7

    .line 332
    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_8
        :pswitch_50
        :pswitch_71
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 261
    const-string v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 271
    :cond_8
    :goto_8
    return-void

    .line 266
    :cond_9
    invoke-static {p2, p3, p4}, Lcom/android/settings/DateTimeSettings;->setDate(III)V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 268
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_8

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_8
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 147
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 236
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 442
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_e

    .line 443
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 453
    :cond_9
    :goto_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 444
    :cond_e
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_19

    .line 446
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 447
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    goto :goto_9

    .line 448
    :cond_19
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_new

    .line 449
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mHideAmPm:Landroid/preference/Preference;

    if-nez v0, :cond_hideampm
        
    const/4 v0, 0x1
        
    goto :set_ampm
        
    :cond_hideampm

    const/4 v0, 0x0
        
    :set_ampm   
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_updatetime

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 451
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->timeUpdated()V

    goto :goto_9

    :cond_new
    const-string v3, "hide_ampm"

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mHideAmPm:Landroid/preference/Preference;

    if-ne p2, v0, :cond_new2

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mHideAmPm:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2
        
    :save_ampm
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hide_ampm"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
        
    goto :cond_updatetime
        
    :cond_new2
    const-string v3, "hide_time"

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mHideTime:Landroid/preference/Preference;

    if-ne p2, v0, :goto_9
        
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mHideTime:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2
        
    :save_time

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hide_time"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v2, :cond_hidebtns
        
    const/4 v2, 0x1
        
    goto :cond_setbtns
        
    :cond_hidebtns

    const/4 v2, 0x0
        
    :cond_setbtns   
        
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mHideAmPm:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V    

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V    

    goto :cond_updatetime
    
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 213
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 218
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 228
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 294
    const-string v3, "date_format"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b011c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, format:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 326
    .end local v2           #format:Ljava/lang/String;
    :cond_29
    :goto_29
    return-void

    .line 300
    :cond_2a
    const-string v3, "auto_time"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 301
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 316
    .local v0, autoEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time"

    if-eqz v0, :cond_52

    move v3, v4

    :goto_3f
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_54

    move v3, v4

    :goto_47
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 319
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_56

    :goto_4e
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_29

    :cond_52
    move v3, v5

    .line 316
    goto :goto_3f

    :cond_54
    move v3, v5

    .line 318
    goto :goto_47

    :cond_56
    move v4, v5

    .line 319
    goto :goto_4e

    .line 320
    .end local v0           #autoEnabled:Z
    :cond_58
    const-string v3, "auto_zone"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 321
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 322
    .local v1, autoZoneEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time_zone"

    if-eqz v1, :cond_78

    move v3, v4

    :goto_6d
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_7a

    :goto_74
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_29

    :cond_78
    move v3, v5

    .line 322
    goto :goto_6d

    :cond_7a
    move v4, v5

    .line 324
    goto :goto_74
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 276
    const-string v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 290
    :cond_8
    :goto_8
    return-void

    .line 281
    :cond_9
    invoke-static {p2, p3}, Lcom/android/settings/DateTimeSettings;->setTime(II)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 283
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_8

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_8
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 239
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    .line 240
    .local v12, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 241
    .local v11, now:Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 244
    .local v9, dummyDate:Ljava/util/Date;
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 249
    .local v8, dateFormats:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, dateEntries:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_6e
    array-length v0, v8

    if-ge v10, v0, :cond_84

    .line 251
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    aget-object v1, v8, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 252
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    aget-object v1, v7, v10

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    :cond_84
    return-void

    .line 250
    :cond_85
    add-int/lit8 v10, v10, 0x1

    goto :goto_6e
.end method
