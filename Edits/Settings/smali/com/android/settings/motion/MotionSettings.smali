.class public Lcom/android/settings/motion/MotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings.java"


# instance fields
.field private mDoubleTap:Landroid/preference/PreferenceScreen;

.field private mMotions:Landroid/preference/CheckBoxPreference;

.field private mPan:Landroid/preference/PreferenceScreen;

.field private mPickUp:Landroid/preference/PreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShake:Landroid/preference/PreferenceScreen;

.field private mTilt:Landroid/preference/PreferenceScreen;

.field private mTurnOver:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private broadcastMotionChanged(Z)V
    .registers 4
    .parameter "isEnable"

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v3, 0x7f05001e

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->addPreferencesFromResource(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 44
    const-string v3, "motion_activation"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    .line 45
    const-string v3, "tilt"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/PreferenceScreen;

    .line 46
    const-string v3, "pan"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/PreferenceScreen;

    .line 47
    const-string v3, "shake"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/PreferenceScreen;

    .line 48
    const-string v3, "double_tap"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/PreferenceScreen;

    .line 49
    const-string v3, "pick_up"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/PreferenceScreen;

    .line 50
    const-string v3, "turn_over"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/PreferenceScreen;

    .line 51
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0b07d9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f0b07f9

    invoke-virtual {p0, v6}, Lcom/android/settings/motion/MotionSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/motion/MotionSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 55
    .local v2, ps:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_88

    .line 56
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 58
    :cond_88
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 59
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 61
    :cond_9e
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_b4

    .line 62
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 64
    :cond_b4
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_f7

    .line 65
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 81
    :cond_ca
    :goto_ca
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_e0

    .line 82
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    :cond_e0
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_f6

    .line 85
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 88
    :cond_f6
    return-void

    .line 68
    :cond_f7
    const/4 v1, 0x1

    .line 70
    .local v1, isVlingoInstalled:Z
    :try_start_f8
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.vlingo.client.samsung"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_106
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f8 .. :try_end_106} :catch_10e
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_106} :catch_118

    .line 76
    :goto_106
    if-nez v1, :cond_ca

    .line 77
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_ca

    .line 71
    :catch_10e
    move-exception v0

    .line 72
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "MotionsSettings"

    const-string v4, "vlingo is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    .line 75
    goto :goto_106

    .line 74
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_118
    move-exception v3

    goto :goto_106
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 100
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_23

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v1

    :goto_14
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    .line 105
    :goto_20
    return v1

    .line 101
    :cond_21
    const/4 v0, 0x0

    goto :goto_14

    .line 105
    :cond_23
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_20
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 95
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    return-void
.end method
