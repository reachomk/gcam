.class public Lcom/android/camera/stats/ActivityInstrumentationModule;
.super Ljava/lang/Object;
.source "ActivityInstrumentationModule.java"


# instance fields
.field private final cameraActivitySession:Lcom/android/camera/stats/CameraActivitySession;


# direct methods
.method public constructor <init>(Lcom/android/camera/stats/CameraActivitySession;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/stats/ActivityInstrumentationModule;->cameraActivitySession:Lcom/android/camera/stats/CameraActivitySession;

    .line 20
    return-void
.end method

.method public static provideInstrumentationCleanupBehavior(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior;)Lcom/android/camera/behavior/Behavior;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/camera/stats/ActivityInstrumentationModule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/stats/ActivityInstrumentationModule$1;-><init>(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior;)V

    invoke-static {v0}, Lcom/android/camera/behavior/Behaviors;->of(Ljava/lang/Runnable;)Lcom/android/camera/behavior/Behavior;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public provideCameraActivitySession()Lcom/android/camera/stats/CameraActivitySession;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/stats/ActivityInstrumentationModule;->cameraActivitySession:Lcom/android/camera/stats/CameraActivitySession;

    return-object v0
.end method
