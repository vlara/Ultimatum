.class Lcom/android/wanam/systemui/StBar/RebootButton$3;
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


# direct methods
.method constructor <init>(Lcom/android/wanam/systemui/StBar/RebootButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wanam/systemui/StBar/RebootButton$3;->this$0:Lcom/android/wanam/systemui/StBar/RebootButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
