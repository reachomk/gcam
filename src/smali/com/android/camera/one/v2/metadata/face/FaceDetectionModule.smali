.class public final Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;
.super Ljava/lang/Object;
.source "FaceDetectionModule.java"


# instance fields
.field private final faces:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/Handles;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    new-instance v1, Lcom/google/android/libraries/smartburst/utils/handles/Handles;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/hardware/camera2/params/Face;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;-><init>([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;->faces:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 25
    return-void
.end method


# virtual methods
.method public final provideFaceResponseListener()Lcom/android/camera/one/v2/metadata/face/FaceDetectionResponseListener;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionResponseListener;

    iget-object v1, p0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;->faces:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionResponseListener;-><init>(Lcom/google/android/apps/camera/async/Updatable;)V

    return-object v0
.end method

.method public final provideFaces()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/Handles;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;->faces:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method
