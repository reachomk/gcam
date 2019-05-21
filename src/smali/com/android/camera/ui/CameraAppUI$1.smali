.class final Lcom/android/camera/ui/CameraAppUI$1;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraAppUI;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI$1;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$1;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/ui/CameraAppUI;->access$000(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$1;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/ui/CameraAppUI;->access$000(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/camera/ui/PreviewStatusListener;->onPreviewLayoutChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR954KIIA9954KIAAM(IIII)V

    .line 434
    :cond_0
    return-void
.end method
