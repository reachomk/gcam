.class final Lcom/android/camera/ui/CameraAppUI$8;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CameraAppUI;->prepareModuleUI(Lcom/android/camera/ui/views/CameraUi;Lcom/android/camera/filmstrip/FilmstripFragment;)V
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
    .line 1402
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI$8;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewAspectRatioChanged(F)V
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$8;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/ui/CameraAppUI;->access$800(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/BottomBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBar;->requestLayout()V

    .line 1406
    return-void
.end method
