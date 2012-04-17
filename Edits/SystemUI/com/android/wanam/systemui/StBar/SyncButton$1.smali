.class Lcom/android/wanam/systemui/StBar/SyncButton$1;
.super Ljava/lang/Object;
.source "SyncButton.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wanam/systemui/StBar/SyncButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wanam/systemui/StBar/SyncButton;


# direct methods
.method constructor <init>(Lcom/android/wanam/systemui/StBar/SyncButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wanam/systemui/StBar/SyncButton$1;->this$0:Lcom/android/wanam/systemui/StBar/SyncButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton$1;->this$0:Lcom/android/wanam/systemui/StBar/SyncButton;

    invoke-virtual {v0}, Lcom/android/wanam/systemui/StBar/SyncButton;->update()V

    return-void
.end method
