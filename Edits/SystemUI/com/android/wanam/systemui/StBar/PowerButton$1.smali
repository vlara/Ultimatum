.class Lcom/android/wanam/systemui/StBar/PowerButton$1;
.super Landroid/os/Handler;
.source "PowerButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wanam/systemui/StBar/PowerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wanam/systemui/StBar/PowerButton;


# direct methods
.method constructor <init>(Lcom/android/wanam/systemui/StBar/PowerButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wanam/systemui/StBar/PowerButton$1;->this$0:Lcom/android/wanam/systemui/StBar/PowerButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerButton$1;->this$0:Lcom/android/wanam/systemui/StBar/PowerButton;

    iget-object v2, v2, Lcom/android/wanam/systemui/StBar/PowerButton;->mView:Landroid/view/View;

    if-eqz v2, :cond_29

    const v0, 0x3060014

    const v1, 0x3060016

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerButton$1;->this$0:Lcom/android/wanam/systemui/StBar/PowerButton;

    iget-object v3, p0, Lcom/android/wanam/systemui/StBar/PowerButton$1;->this$0:Lcom/android/wanam/systemui/StBar/PowerButton;

    iget v3, v3, Lcom/android/wanam/systemui/StBar/PowerButton;->mIcon:I

    #calls: Lcom/android/wanam/systemui/StBar/PowerButton;->updateImageView(II)V
    invoke-static {v2, v0, v3}, Lcom/android/wanam/systemui/StBar/PowerButton;->access$000(Lcom/android/wanam/systemui/StBar/PowerButton;II)V

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerButton$1;->this$0:Lcom/android/wanam/systemui/StBar/PowerButton;

    invoke-virtual {v2}, Lcom/android/wanam/systemui/StBar/PowerButton;->updateText()V

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerButton$1;->this$0:Lcom/android/wanam/systemui/StBar/PowerButton;

    iget v2, v2, Lcom/android/wanam/systemui/StBar/PowerButton;->mState:I

    packed-switch v2, :pswitch_data_3c

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerButton$1;->this$0:Lcom/android/wanam/systemui/StBar/PowerButton;

    const v3, 0x3020070

    #calls: Lcom/android/wanam/systemui/StBar/PowerButton;->updateImageView(II)V
    invoke-static {v2, v1, v3}, Lcom/android/wanam/systemui/StBar/PowerButton;->access$000(Lcom/android/wanam/systemui/StBar/PowerButton;II)V

    :cond_29
    :goto_29
    return-void

    :pswitch_2a
    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerButton$1;->this$0:Lcom/android/wanam/systemui/StBar/PowerButton;

    const v3, 0x3020072

    #calls: Lcom/android/wanam/systemui/StBar/PowerButton;->updateImageView(II)V
    invoke-static {v2, v1, v3}, Lcom/android/wanam/systemui/StBar/PowerButton;->access$000(Lcom/android/wanam/systemui/StBar/PowerButton;II)V

    goto :goto_29

    :pswitch_33
    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerButton$1;->this$0:Lcom/android/wanam/systemui/StBar/PowerButton;

    const v3, 0x3020071

    #calls: Lcom/android/wanam/systemui/StBar/PowerButton;->updateImageView(II)V
    invoke-static {v2, v1, v3}, Lcom/android/wanam/systemui/StBar/PowerButton;->access$000(Lcom/android/wanam/systemui/StBar/PowerButton;II)V

    goto :goto_29

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_33
    .end packed-switch
.end method
