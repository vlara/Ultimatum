.class Lcom/android/settings/motion/PickUpSettings$1;
.super Landroid/os/Handler;
.source "PickUpSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/PickUpSettings;
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
    .line 54
    iput-object p1, p0, Lcom/android/settings/motion/PickUpSettings$1;->this$0:Lcom/android/settings/motion/PickUpSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 61
    :goto_5
    return-void

    .line 58
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/motion/PickUpSettings$1;->this$0:Lcom/android/settings/motion/PickUpSettings;

    #calls: Lcom/android/settings/motion/PickUpSettings;->updateAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion/PickUpSettings;->access$000(Lcom/android/settings/motion/PickUpSettings;)V

    goto :goto_5

    .line 56
    :pswitch_data_c
    .packed-switch 0x66
        :pswitch_6
    .end packed-switch
.end method