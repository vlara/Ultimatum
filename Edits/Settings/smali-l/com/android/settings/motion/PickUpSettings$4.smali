.class Lcom/android/settings/motion/PickUpSettings$4;
.super Ljava/lang/Object;
.source "PickUpSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/PickUpSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/PickUpSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/PickUpSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/settings/motion/PickUpSettings$4;->this$0:Lcom/android/settings/motion/PickUpSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/motion/PickUpSettings$4;->this$0:Lcom/android/settings/motion/PickUpSettings;

    #calls: Lcom/android/settings/motion/PickUpSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/PickUpSettings;->access$400(Lcom/android/settings/motion/PickUpSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_pick_up"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_15

    .line 199
    iget-object v0, p0, Lcom/android/settings/motion/PickUpSettings$4;->this$0:Lcom/android/settings/motion/PickUpSettings;

    #calls: Lcom/android/settings/motion/PickUpSettings;->startTryActually()V
    invoke-static {v0}, Lcom/android/settings/motion/PickUpSettings;->access$200(Lcom/android/settings/motion/PickUpSettings;)V

    .line 203
    :goto_14
    return-void

    .line 201
    :cond_15
    iget-object v0, p0, Lcom/android/settings/motion/PickUpSettings$4;->this$0:Lcom/android/settings/motion/PickUpSettings;

    #calls: Lcom/android/settings/motion/PickUpSettings;->showMotionDialog()V
    invoke-static {v0}, Lcom/android/settings/motion/PickUpSettings;->access$500(Lcom/android/settings/motion/PickUpSettings;)V

    goto :goto_14
.end method
