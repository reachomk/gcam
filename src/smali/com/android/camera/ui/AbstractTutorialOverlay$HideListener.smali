.class public Lcom/android/camera/ui/AbstractTutorialOverlay$HideListener;
.super Ljava/lang/Object;
.source "AbstractTutorialOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AbstractTutorialOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HideListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraAppUI;)V
    .locals 0

    .prologue
    .line 4219
    iput-object p1, p0, Lcom/android/camera/ui/AbstractTutorialOverlay$HideListener;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 2

    .prologue
    .line 3222
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay$HideListener;->this$0:Lcom/android/camera/ui/CameraAppUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/CameraAppUI;->access$2000(Lcom/android/camera/ui/CameraAppUI;I)V

    .line 3223
    return-void
.end method
