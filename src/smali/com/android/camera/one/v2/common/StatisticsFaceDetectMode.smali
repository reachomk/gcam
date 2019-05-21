.class final Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;
.super Lcom/google/android/apps/camera/async/TransformedObservable;
.source "StatisticsFaceDetectMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedObservable",
        "<",
        "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/async/TransformedObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected final synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    .line 1026
    invoke-virtual {p1}, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->toCamera2Mode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 15
    return-object v0
.end method
