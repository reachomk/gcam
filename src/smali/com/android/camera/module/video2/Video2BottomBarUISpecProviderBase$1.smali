.class final Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase$1;
.super Ljava/lang/Object;
.source "Video2BottomBarUISpecProviderBase.java"

# interfaces
.implements Lcom/android/camera/ui/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase;->provideBottomBarUISpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase$1;->this$0:Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase$1;->this$0:Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase;

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase;->bottomBarUICallback:Lcom/android/camera/module/BottomBarUICallback;

    invoke-interface {v0}, Lcom/android/camera/module/BottomBarUICallback;->onSwitchCameraButtonClicked()V

    .line 53
    return-void
.end method
