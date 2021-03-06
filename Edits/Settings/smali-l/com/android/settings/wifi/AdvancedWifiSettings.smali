.class public Lcom/android/settings/wifi/AdvancedWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAddIwlanNetwork:Landroid/preference/Preference;

.field private mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

.field private mSelectedIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 173
    const-string v8, "notify_open_networks"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 175
    .local v1, notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "wifi_networks_available_notification_on"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_be

    move v8, v9

    :goto_17
    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 177
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 179
    const-string v8, "wifi_enable_watchdog_service"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 181
    .local v7, watchdogEnabled:Landroid/preference/CheckBoxPreference;
    if-eqz v7, :cond_43

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "wifi_watchdog_on"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_c1

    :goto_39
    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_43
    const-string v8, "frequency_band"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 191
    .local v0, frequencyPref:Landroid/preference/ListPreference;
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 192
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v6

    .line 194
    .local v6, value:I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_c4

    .line 195
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 206
    .end local v6           #value:I
    :cond_66
    :goto_66
    const-string v8, "sleep_policy"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 207
    .local v4, sleepPolicyPref:Landroid/preference/ListPreference;
    if-eqz v4, :cond_98

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_80

    .line 209
    const v8, 0x7f07001f

    invoke-virtual {v4, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 211
    :cond_80
    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_sleep_policy"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 215
    .restart local v6       #value:I
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, stringValue:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 222
    .end local v5           #stringValue:Ljava/lang/String;
    .end local v6           #value:I
    :cond_98
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 224
    .local v2, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v8, "iwlan_enabled_category"

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 225
    .local v3, removablePref:Landroid/preference/Preference;
    if-eqz v3, :cond_a7

    .line 226
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_a7
    const-string v8, "iwlan_networks"

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 229
    if-eqz v3, :cond_b2

    .line 230
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    :cond_b2
    const-string v8, "add_other_iwlan"

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 233
    if-eqz v3, :cond_bd

    .line 234
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    :cond_bd
    return-void

    .end local v0           #frequencyPref:Landroid/preference/ListPreference;
    .end local v2           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v3           #removablePref:Landroid/preference/Preference;
    .end local v4           #sleepPolicyPref:Landroid/preference/ListPreference;
    .end local v7           #watchdogEnabled:Landroid/preference/CheckBoxPreference;
    :cond_be
    move v8, v10

    .line 175
    goto/16 :goto_17

    .restart local v7       #watchdogEnabled:Landroid/preference/CheckBoxPreference;
    :cond_c1
    move v9, v10

    .line 182
    goto/16 :goto_39

    .line 197
    .restart local v0       #frequencyPref:Landroid/preference/ListPreference;
    .restart local v6       #value:I
    :cond_c4
    const-string v8, "AdvancedWifiSettings"

    const-string v9, "Failed to fetch frequency band"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 200
    .end local v6           #value:I
    :cond_cc
    if-eqz v0, :cond_66

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_66
.end method

.method private refreshWifiInfo()V
    .locals 7

    .prologue
    const v6, 0x7f0b037a

    .line 317
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 319
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v5, "mac_address"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 320
    .local v4, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v2, :cond_37

    const/4 v1, 0x0

    .line 321
    .local v1, macAddress:Ljava/lang/String;
    :goto_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3c

    .end local v1           #macAddress:Ljava/lang/String;
    :goto_18
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    const-string v5, "current_ip_address"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 325
    .local v3, wifiIpAddressPref:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, ipAddress:Ljava/lang/String;
    if-nez v0, :cond_33

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0           #ipAddress:Ljava/lang/String;
    :cond_33
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    return-void

    .line 320
    .end local v3           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_37
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 321
    .restart local v1       #macAddress:Ljava/lang/String;
    :cond_3c
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_18
.end method

.method private showIwlanDialog(Lcom/android/settings/wifi/IwlanNetwork;Z)V
    .locals 2
    .parameter "iwlanNetwork"
    .parameter "edit"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    if-eqz v0, :cond_9

    .line 353
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanDialog;->dismiss()V

    .line 355
    :cond_9
    new-instance v0, Lcom/android/settings/wifi/IwlanDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/wifi/IwlanDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanDialog;->show()V

    .line 357
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 6
    .parameter "sleepPolicyPref"
    .parameter "value"

    .prologue
    .line 240
    if-eqz p2, :cond_3e

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_37

    const v2, 0x7f07001f

    .line 244
    .local v2, summaryArrayResId:I
    :goto_1a
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    array-length v4, v3

    if-ge v0, v4, :cond_3e

    .line 246
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 247
    array-length v4, v1

    if-ge v0, v4, :cond_3b

    .line 248
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_36
    return-void

    .line 242
    .restart local v3       #values:[Ljava/lang/String;
    :cond_37
    const v2, 0x7f07001e

    goto :goto_1a

    .line 245
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #summaryArrayResId:I
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 255
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :cond_3e
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_36
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 131
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f050047

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "mwlan_enabled_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "mwlan_permission_allowed_2"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 287
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, key:Ljava/lang/String;
    const-string v4, "frequency_band"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 291
    :try_start_e
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_1c} :catch_3a

    .line 299
    :cond_1c
    const-string v4, "sleep_policy"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 301
    :try_start_24
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 302
    .local v3, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "wifi_sleep_policy"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    invoke-direct {p0, p1, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_38} :catch_4b

    .end local v3           #stringValue:Ljava/lang/String;
    :cond_38
    move v4, v6

    .line 312
    :goto_39
    return v4

    .line 292
    :catch_3a
    move-exception v1

    .line 293
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0b0297

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 295
    goto :goto_39

    .line 305
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_4b
    move-exception v1

    .line 306
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0b024c

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 308
    goto :goto_39
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 262
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, key:Ljava/lang/String;
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1e

    move v1, v2

    :cond_1e
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    :goto_21
    return v2

    .line 268
    .restart local p2
    :cond_22
    const-string v3, "wifi_enable_watchdog_service"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_39

    move v1, v2

    :cond_39
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_21

    .line 272
    .restart local p2
    :cond_3d
    instance-of v3, p2, Lcom/android/settings/wifi/IwlanNetwork;

    if-eqz v3, :cond_4b

    .line 273
    check-cast p2, Lcom/android/settings/wifi/IwlanNetwork;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSelectedIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    .line 274
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSelectedIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-direct {p0, v3, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showIwlanDialog(Lcom/android/settings/wifi/IwlanNetwork;Z)V

    goto :goto_21

    .line 275
    .restart local p2
    :cond_4b
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAddIwlanNetwork:Landroid/preference/Preference;

    if-ne p2, v1, :cond_55

    .line 276
    iput-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSelectedIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    .line 277
    invoke-direct {p0, v4, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showIwlanDialog(Lcom/android/settings/wifi/IwlanNetwork;Z)V

    goto :goto_21

    .line 279
    :cond_55
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_21
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 151
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 152
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 169
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 334
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 340
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 344
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 348
    return-void
.end method
