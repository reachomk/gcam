.class public final Lcom/android/camera/ui/FaceViewAdapter;
.super Ljava/lang/Object;
.source "FaceViewAdapter.java"


# instance fields
.field private captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field final faceView:Lcom/android/camera/ui/FaceView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/CaptureLayoutHelper;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/camera/ui/FaceViewAdapter;->faceView:Lcom/android/camera/ui/FaceView;

    .line 19
    iput-object p2, p0, Lcom/android/camera/ui/FaceViewAdapter;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 20
    return-void
.end method

.method public static createAndWireUI(Landroid/view/View;Lcom/android/camera/ui/CaptureLayoutHelper;)Lcom/android/camera/ui/FaceViewAdapter;
    .locals 2

    .prologue
    .line 31
    const v0, 0x7f1100b3

    .line 1036
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    .line 1037
    new-instance v1, Lcom/android/camera/ui/FaceViewAdapter;

    invoke-direct {v1, v0, p1}, Lcom/android/camera/ui/FaceViewAdapter;-><init>(Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/CaptureLayoutHelper;)V

    .line 31
    return-object v1
.end method


# virtual methods
.method public final configureOrientation(ZILcom/google/android/apps/camera/util/layout/Orientation;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/FaceViewAdapter;->faceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/FaceViewAdapter;->faceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setSensorOrientation(I)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/FaceViewAdapter;->faceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p3}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(Lcom/google/android/apps/camera/util/layout/Orientation;)V

    .line 68
    return-void
.end method

.method public final setFaces([Landroid/hardware/Camera$Face;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/FaceViewAdapter;->faceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/ui/FaceViewAdapter;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    invoke-virtual {v1}, Lcom/android/camera/ui/CaptureLayoutHelper;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;Landroid/graphics/RectF;)V

    .line 77
    return-void
.end method
