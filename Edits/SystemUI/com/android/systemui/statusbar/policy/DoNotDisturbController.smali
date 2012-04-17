.class public Lcom/android/systemui/statusbar/policy/DoNotDisturbController;
.super Ljava/lang/Object;
.source "DoNotDisturbController.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;


# instance fields
.field private mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;

.field private mDoNotDisturb:Z

.field mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "do_not_disturb"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-nez v1, :cond_25

    const/4 v0, 0x1

    :cond_25
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V

    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "do_not_disturb"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    const-string v0, "STATUSBAR-DoNotDisturbController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() - mDoNotDisturb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_38
    const/4 v0, 0x2

    goto :goto_1a
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-nez p2, :cond_16

    const/4 v1, 0x1

    :goto_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-eq v1, v2, :cond_15

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "do_not_disturb"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_15
    return-void

    :cond_16
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public onClick(Z)V
    .locals 4

    const-string v1, "STATUSBAR-DoNotDisturbController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() - state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-eq p1, v1, :cond_34

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "do_not_disturb"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_35

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    :cond_34
    :goto_34
    return-void

    :cond_35
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_34
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const-string v2, "do_not_disturb"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-eq v0, v2, :cond_15

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mCheckBox:Landroid/widget/CompoundButton;

    if-nez v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_15
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
