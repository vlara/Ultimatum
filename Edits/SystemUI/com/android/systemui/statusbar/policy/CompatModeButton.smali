.class public Lcom/android/systemui/statusbar/policy/CompatModeButton;
.super Landroid/widget/ImageView;
.source "CompatModeButton.java"


# instance fields
.field private mAM:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->setClickable(Z)V

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CompatModeButton;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->refresh()V

    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CompatModeButton;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getFrontActivityScreenCompatMode()I

    move-result v0

    const/4 v3, -0x3

    if-ne v0, v3, :cond_b

    :goto_a
    return-void

    :cond_b
    const/4 v3, -0x2

    if-eq v0, v3, :cond_18

    const/4 v3, -0x1

    if-eq v0, v3, :cond_18

    const/4 v1, 0x1

    :goto_12
    if-eqz v1, :cond_1a

    :goto_14
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->setVisibility(I)V

    goto :goto_a

    :cond_18
    move v1, v2

    goto :goto_12

    :cond_1a
    const/16 v2, 0x8

    goto :goto_14
.end method
