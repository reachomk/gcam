.class final Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6$1;
.super Ljava/lang/Object;
.source "LightCycleController.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->onPictureTaken$51DK4J33DTMIUOBECHP6UQB45TINGBR3C5MMASJ168NN0RRIEHGM4QBCD5Q7IBQ3C5MMASJ185JMARJK4H1M2RB5E9GL0SJFF1SJMAAM([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewStarted()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$202(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z

    .line 715
    return-void
.end method
