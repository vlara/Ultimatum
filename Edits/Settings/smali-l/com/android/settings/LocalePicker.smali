.class public Lcom/android/settings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 34
    invoke-virtual {p0, p0}, Lcom/android/settings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0b04c5

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 57
    return-void
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 48
    invoke-static {p1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 49
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/internal/app/LocalePicker;->onResume()V

    .line 43
    return-void
.end method
