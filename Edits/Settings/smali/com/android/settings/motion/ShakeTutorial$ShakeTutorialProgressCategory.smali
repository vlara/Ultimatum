.class public Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialProgressCategory;
.super Landroid/preference/PreferenceCategory;
.source "ShakeTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/ShakeTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShakeTutorialProgressCategory"
.end annotation


# instance fields
.field private mProgress:Z

.field final synthetic this$0:Lcom/android/settings/motion/ShakeTutorial;


# direct methods
.method public constructor <init>(Lcom/android/settings/motion/ShakeTutorial;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialProgressCategory;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    .line 314
    invoke-direct {p0, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialProgressCategory;->mProgress:Z

    .line 315
    const v0, 0x7f040073

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialProgressCategory;->setLayoutResource(I)V

    .line 316
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 321
    const v3, 0x7f080153

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 322
    .local v1, textView:Landroid/view/View;
    const v3, 0x7f080154

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 324
    .local v0, progressBar:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialProgressCategory;->mProgress:Z

    if-eqz v3, :cond_1d

    const/4 v2, 0x0

    .line 325
    .local v2, visibility:I
    :goto_16
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 327
    return-void

    .line 324
    .end local v2           #visibility:I
    :cond_1d
    const/4 v2, 0x4

    goto :goto_16
.end method

.method public setProgress(Z)V
    .registers 2
    .parameter "progressOn"

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialProgressCategory;->mProgress:Z

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialProgressCategory;->notifyChanged()V

    .line 336
    return-void
.end method
