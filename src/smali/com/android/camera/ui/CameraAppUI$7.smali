.class final Lcom/android/camera/ui/CameraAppUI$7;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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
    .line 958
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI$7;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .prologue
    .line 962
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$7;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/ui/CameraAppUI;->access$1600(Lcom/android/camera/ui/CameraAppUI;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDisplayRotation(Landroid/view/WindowManager;)I

    move-result v0

    .line 969
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$7;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$1700(Lcom/android/camera/ui/CameraAppUI;)I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$7;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$000(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 970
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$7;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$000(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/PreviewStatusListener;->onPreviewFlipped()V

    .line 971
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$7;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$600(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/StickyBottomCaptureLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->requestLayout()V

    .line 972
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$7;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$300(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/PreviewContentAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/PreviewContentAdapter;->requestLayout()V

    .line 974
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$7;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1, v0}, Lcom/android/camera/ui/CameraAppUI;->access$1702(Lcom/android/camera/ui/CameraAppUI;I)I

    .line 975
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .prologue
    .line 980
    return-void
.end method
