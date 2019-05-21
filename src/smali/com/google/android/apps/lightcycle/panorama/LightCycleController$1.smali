.class final Lcom/google/android/apps/lightcycle/panorama/LightCycleController$1;
.super Ljava/lang/Object;
.source "LightCycleController.java"

# interfaces
.implements Lcom/google/android/apps/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;Lcom/google/android/apps/lightcycle/sensor/SensorReader;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Lcom/android/camera/location/LocationProvider;Lcom/google/android/apps/camera/inject/activity/ActivityServices;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/util/Callback;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$1;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onCallback(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 241
    check-cast p1, Ljava/lang/Float;

    .line 1244
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$1;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->onSensorVelocityUpdate(F)V

    .line 1245
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$1;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$100(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/android/camera/gl/SurfaceTextureRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/gl/SurfaceTextureRenderer;->draw(Z)V

    .line 241
    return-void
.end method
