.class final Lcom/android/camera/ui/CameraAppUI$2;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


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
    .line 448
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI$2;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$2;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/ui/CameraAppUI;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQ3C5MMASJ185O70LA97CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_(Lcom/android/camera/ui/CameraAppUI;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 452
    return-void
.end method
