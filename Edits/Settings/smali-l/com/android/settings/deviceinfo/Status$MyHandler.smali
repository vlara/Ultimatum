.class Lcom/android/settings/deviceinfo/Status$MyHandler;
.super Landroid/os/Handler;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 141
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 145
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/Status;

    .line 146
    .local v1, status:Lcom/android/settings/deviceinfo/Status;
    if-nez v1, :cond_b

    .line 165
    :goto_a
    return-void

    .line 150
    :cond_b
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_2c

    goto :goto_a

    .line 152
    :sswitch_11
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/Status;->updateSignalStrength()V

    goto :goto_a

    .line 156
    :sswitch_15
    #getter for: Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->access$000(Lcom/android/settings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 157
    .local v0, serviceState:Landroid/telephony/ServiceState;
    #calls: Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v1, v0}, Lcom/android/settings/deviceinfo/Status;->access$100(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V

    goto :goto_a

    .line 161
    .end local v0           #serviceState:Landroid/telephony/ServiceState;
    :sswitch_21
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/Status;->updateTimes()V

    .line 162
    const/16 v2, 0x1f4

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/deviceinfo/Status$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a

    .line 150
    :sswitch_data_2c
    .sparse-switch
        0xc8 -> :sswitch_11
        0x12c -> :sswitch_15
        0x1f4 -> :sswitch_21
    .end sparse-switch
.end method
