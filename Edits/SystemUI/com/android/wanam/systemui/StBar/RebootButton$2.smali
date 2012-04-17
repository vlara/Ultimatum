.class Lcom/android/wanam/systemui/StBar/RebootButton$2;
.super Ljava/lang/Object;
.source "RebootButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wanam/systemui/StBar/RebootButton;->reboot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wanam/systemui/StBar/RebootButton;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/wanam/systemui/StBar/RebootButton;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wanam/systemui/StBar/RebootButton$2;->this$0:Lcom/android/wanam/systemui/StBar/RebootButton;

    iput-object p2, p0, Lcom/android/wanam/systemui/StBar/RebootButton$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/RebootButton$2;->val$context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/RebootButton$2;->this$0:Lcom/android/wanam/systemui/StBar/RebootButton;

    #getter for: Lcom/android/wanam/systemui/StBar/RebootButton;->action:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/wanam/systemui/StBar/RebootButton;->access$000(Lcom/android/wanam/systemui/StBar/RebootButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
