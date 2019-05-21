.class final Lcom/android/camera/ui/CameraAppUI$5;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/android/camera/ui/captureindicator/CaptureIndicatorController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CameraAppUI;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/ui/MainActivityLayout;Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/util/AccessibilityUtil;Lcom/android/camera/util/lifetime/ActivityLifetime;Landroid/hardware/display/DisplayManager;Landroid/view/WindowManager;ZLcom/android/camera/debug/trace/Trace;Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;Lcom/android/camera/ui/controller/CaptureStatechart;Lcom/android/camera/ui/controller/PhotoVideoStatechart;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/google/android/apps/camera/async/Observable;)V
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
    .line 865
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI$5;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTap()V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$5;->this$0:Lcom/android/camera/ui/CameraAppUI;

    .line 869
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$5;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->showFilmstrip()V

    .line 870
    return-void
.end method
