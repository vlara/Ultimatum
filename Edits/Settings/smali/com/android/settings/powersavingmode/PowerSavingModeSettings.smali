.class public Lcom/android/settings/powersavingmode/PowerSavingModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerSavingModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdjustBrightness:Landroid/preference/CheckBoxPreference;

.field private mBrightnessSetting:Landroid/preference/ListPreference;

.field private mCancelButton:Landroid/widget/Button;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisableBluetooth:Landroid/preference/CheckBoxPreference;

.field private mDisableGps:Landroid/preference/CheckBoxPreference;

.field private mDisableSync:Landroid/preference/CheckBoxPreference;

.field private mDisableWifi:Landroid/preference/CheckBoxPreference;

.field private mModeValueSetting:Landroid/preference/ListPreference;

.field private mNew_battery_level:I

.field private mNew_brightness_level:I

.field private mNew_screen_timeout:I

.field private mOkButton:Landroid/widget/Button;

.field private mSaved_battery_level:I

.field private mSaved_brightness_level:I

.field private mSaved_screen_timeout:I

.field private mScreentimeout:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/16 v0, 0x3a98

    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 108
    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    .line 109
    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    return-void
.end method

.method private toggleBrightnessSetting(Z)V
    .registers 4
    .parameter "enableMode"

    .prologue
    .line 336
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 337
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 341
    :goto_10
    return-void

    .line 339
    :cond_11
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_10
.end method

.method private updateUIFromPreferences()V
    .registers 16

    .prologue
    const/16 v14, 0x32

    const/16 v13, 0x1e

    const/16 v12, 0xa

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 233
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "psm_battery_level"

    invoke-static {v7, v10, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 234
    .local v0, batteryValue:I
    const/4 v1, 0x0

    .line 235
    .local v1, batteryValueIndex:I
    if-ne v0, v12, :cond_e6

    .line 236
    const/4 v1, 0x0

    .line 248
    :goto_14
    if-ne v0, v12, :cond_101

    .line 249
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07a5

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 260
    :cond_26
    :goto_26
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 261
    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    .line 263
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "psm_brightness_level"

    invoke-static {v7, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 264
    .local v2, brightnessValue:I
    const/4 v3, 0x0

    .line 267
    .local v3, brightnessValueIndex:I
    if-ne v2, v12, :cond_155

    .line 268
    const/4 v3, 0x0

    .line 279
    :goto_3b
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 280
    iput v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    iput v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    .line 282
    if-ne v2, v12, :cond_170

    .line 283
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07aa

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    :cond_56
    :goto_56
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "psm_screen_timeout"

    const/16 v11, 0x3a98

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 295
    .local v5, screen_timeout_Value:I
    const/4 v6, 0x0

    .line 297
    .local v6, screen_timeout_ValueIndex:I
    const/16 v7, 0x3a98

    if-ne v5, v7, :cond_1c4

    .line 298
    const/4 v6, 0x0

    .line 311
    :goto_66
    iput v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    iput v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    .line 313
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 317
    const/4 v4, 0x1

    .line 319
    .local v4, enable:Z
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 320
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 321
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 322
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 323
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 324
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 325
    invoke-direct {p0, v4}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->toggleBrightnessSetting(Z)V

    .line 326
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 328
    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_wifi"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1ee

    move v7, v8

    :goto_a3
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 329
    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_bluetooth"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1f1

    move v7, v8

    :goto_b3
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 330
    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_gps"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1f4

    move v7, v8

    :goto_c3
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 331
    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_sync"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1f7

    move v7, v8

    :goto_d3
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 332
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_brightness"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1fa

    :goto_e2
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 333
    return-void

    .line 237
    .end local v2           #brightnessValue:I
    .end local v3           #brightnessValueIndex:I
    .end local v4           #enable:Z
    .end local v5           #screen_timeout_Value:I
    .end local v6           #screen_timeout_ValueIndex:I
    :cond_e6
    const/16 v7, 0x14

    if-ne v0, v7, :cond_ed

    .line 238
    const/4 v1, 0x1

    goto/16 :goto_14

    .line 239
    :cond_ed
    if-ne v0, v13, :cond_f2

    .line 240
    const/4 v1, 0x2

    goto/16 :goto_14

    .line 241
    :cond_f2
    const/16 v7, 0x28

    if-ne v0, v7, :cond_f9

    .line 242
    const/4 v1, 0x3

    goto/16 :goto_14

    .line 243
    :cond_f9
    if-ne v0, v14, :cond_fe

    .line 244
    const/4 v1, 0x4

    goto/16 :goto_14

    .line 246
    :cond_fe
    const/4 v1, 0x0

    goto/16 :goto_14

    .line 250
    :cond_101
    const/16 v7, 0x14

    if-ne v0, v7, :cond_117

    .line 251
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07a6

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_26

    .line 252
    :cond_117
    if-ne v0, v13, :cond_12b

    .line 253
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07a7

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_26

    .line 254
    :cond_12b
    const/16 v7, 0x28

    if-ne v0, v7, :cond_141

    .line 255
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07a8

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_26

    .line 256
    :cond_141
    if-ne v0, v14, :cond_26

    .line 257
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07a9

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_26

    .line 269
    .restart local v2       #brightnessValue:I
    .restart local v3       #brightnessValueIndex:I
    :cond_155
    if-ne v2, v13, :cond_15a

    .line 270
    const/4 v3, 0x1

    goto/16 :goto_3b

    .line 271
    :cond_15a
    if-ne v2, v14, :cond_15f

    .line 272
    const/4 v3, 0x2

    goto/16 :goto_3b

    .line 273
    :cond_15f
    const/16 v7, 0x46

    if-ne v2, v7, :cond_166

    .line 274
    const/4 v3, 0x3

    goto/16 :goto_3b

    .line 275
    :cond_166
    const/16 v7, 0x64

    if-ne v2, v7, :cond_16d

    .line 276
    const/4 v3, 0x4

    goto/16 :goto_3b

    .line 278
    :cond_16d
    const/4 v3, 0x0

    goto/16 :goto_3b

    .line 284
    :cond_170
    if-ne v2, v13, :cond_184

    .line 285
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07ab

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_56

    .line 286
    :cond_184
    if-ne v2, v14, :cond_198

    .line 287
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07ac

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_56

    .line 288
    :cond_198
    const/16 v7, 0x46

    if-ne v2, v7, :cond_1ae

    .line 289
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07ad

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_56

    .line 290
    :cond_1ae
    const/16 v7, 0x64

    if-ne v2, v7, :cond_56

    .line 291
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07ae

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_56

    .line 299
    .restart local v5       #screen_timeout_Value:I
    .restart local v6       #screen_timeout_ValueIndex:I
    :cond_1c4
    const/16 v7, 0x7530

    if-ne v5, v7, :cond_1cb

    .line 300
    const/4 v6, 0x1

    goto/16 :goto_66

    .line 301
    :cond_1cb
    const v7, 0xea60

    if-ne v5, v7, :cond_1d3

    .line 302
    const/4 v6, 0x2

    goto/16 :goto_66

    .line 303
    :cond_1d3
    const v7, 0x1d4c0

    if-ne v5, v7, :cond_1db

    .line 304
    const/4 v6, 0x3

    goto/16 :goto_66

    .line 305
    :cond_1db
    const v7, 0x493e0

    if-ne v5, v7, :cond_1e3

    .line 306
    const/4 v6, 0x4

    goto/16 :goto_66

    .line 307
    :cond_1e3
    const v7, 0x927c0

    if-ne v5, v7, :cond_1eb

    .line 308
    const/4 v6, 0x5

    goto/16 :goto_66

    .line 310
    :cond_1eb
    const/4 v6, 0x0

    goto/16 :goto_66

    .restart local v4       #enable:Z
    :cond_1ee
    move v7, v9

    .line 328
    goto/16 :goto_a3

    :cond_1f1
    move v7, v9

    .line 329
    goto/16 :goto_b3

    :cond_1f4
    move v7, v9

    .line 330
    goto/16 :goto_c3

    :cond_1f7
    move v7, v9

    .line 331
    goto/16 :goto_d3

    :cond_1fa
    move v8, v9

    .line 332
    goto/16 :goto_e2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 343
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOkButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_98

    .line 345
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    .line 346
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    .line 347
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    .line 349
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_battery_level"

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_brightness_level"

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_screen_timeout"

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 357
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_wifi"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8e

    move v1, v2

    :goto_48
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 358
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_bluetooth"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_90

    move v1, v2

    :goto_58
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_gps"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_92

    move v1, v2

    :goto_68
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_sync"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_94

    move v1, v2

    :goto_78
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_brightness"

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_96

    :goto_87
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->finish()V

    .line 374
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8d
    :goto_8d
    return-void

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_8e
    move v1, v3

    .line 357
    goto :goto_48

    :cond_90
    move v1, v3

    .line 358
    goto :goto_58

    :cond_92
    move v1, v3

    .line 360
    goto :goto_68

    :cond_94
    move v1, v3

    .line 361
    goto :goto_78

    :cond_96
    move v2, v3

    .line 362
    goto :goto_87

    .line 367
    .end local v0           #intent:Landroid/content/Intent;
    :cond_98
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_8d

    .line 369
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_battery_level"

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_brightness_level"

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 371
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_screen_timeout"

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->finish()V

    goto :goto_8d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v0, 0x7f050023

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->addPreferencesFromResource(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 125
    const-string v0, "on_battery_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    .line 126
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    const-string v0, "disable_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    .line 128
    const-string v0, "disable_bluetooth"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v0, "disable_gps"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    .line 130
    const-string v0, "disable_sync"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    .line 131
    const-string v0, "disable_brightness"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    .line 132
    const-string v0, "brightness_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    .line 133
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 134
    const-string v0, "screentimeout_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    .line 136
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_wifi"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_d1

    move v0, v1

    :goto_7c
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 137
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_bluetooth"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_d3

    move v0, v1

    :goto_8c
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 138
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_gps"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_d5

    move v0, v1

    :goto_9c
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 139
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_sync"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_d7

    move v0, v1

    :goto_ac
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_brightness"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_d9

    :goto_bb
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->updateUIFromPreferences()V

    .line 146
    return-void

    :cond_d1
    move v0, v2

    .line 136
    goto :goto_7c

    :cond_d3
    move v0, v2

    .line 137
    goto :goto_8c

    :cond_d5
    move v0, v2

    .line 138
    goto :goto_9c

    :cond_d7
    move v0, v2

    .line 139
    goto :goto_ac

    :cond_d9
    move v1, v2

    .line 140
    goto :goto_bb
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 151
    const v1, 0x7f040032

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, mContentView:Landroid/view/View;
    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOkButton:Landroid/widget/Button;

    .line 154
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mCancelButton:Landroid/widget/Button;

    .line 156
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 167
    const-string v0, "menupowersaving"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/16 v5, 0x32

    const/16 v4, 0x1e

    const/16 v3, 0xa

    const/4 v0, 0x1

    .line 187
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 188
    const-string v1, "PowerSavingModeSettings"

    const-string v2, "set battery level is changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    .line 191
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    if-ne v1, v3, :cond_33

    .line 192
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07a5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 228
    :cond_32
    :goto_32
    return v0

    .line 193
    :cond_33
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_4a

    .line 194
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07a6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 195
    :cond_4a
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    if-ne v1, v4, :cond_5f

    .line 196
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07a7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 197
    :cond_5f
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    const/16 v2, 0x28

    if-ne v1, v2, :cond_76

    .line 198
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07a8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 199
    :cond_76
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    if-ne v1, v5, :cond_32

    .line 200
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07a9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 205
    .restart local p2
    :cond_8b
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 206
    const-string v1, "PowerSavingModeSettings"

    const-string v2, "Brightness level is changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    .line 209
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    if-ne v1, v3, :cond_b8

    .line 210
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07aa

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 211
    :cond_b8
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    if-ne v1, v4, :cond_ce

    .line 212
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07ab

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 213
    :cond_ce
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    if-ne v1, v5, :cond_e4

    .line 214
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07ac

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 215
    :cond_e4
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    const/16 v2, 0x46

    if-ne v1, v2, :cond_fc

    .line 216
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07ad

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 217
    :cond_fc
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_32

    .line 218
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07ae

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 221
    .restart local p2
    :cond_114
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12d

    .line 222
    const-string v1, "PowerSavingModeSettings"

    const-string v2, "Screentimeout is changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    goto/16 :goto_32

    .line 228
    .restart local p2
    :cond_12d
    const/4 v0, 0x0

    goto/16 :goto_32
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 171
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 183
    :cond_9
    :goto_9
    return v0

    .line 173
    :cond_a
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 175
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 177
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 179
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 180
    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->toggleBrightnessSetting(Z)V

    goto :goto_9

    .line 183
    :cond_2e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 163
    return-void
.end method
