.class public final Lcom/google/android/camera/support/v23/experimental/Experimental;
.super Ljava/lang/Object;
.source "Experimental.java"


# static fields
.field private static final CANARIES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final libraries:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 54
    sput-object v0, Lcom/google/android/camera/support/v23/experimental/Experimental;->CANARIES:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "com.google.android.camera.experimental2015.ExperimentalKeys"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/google/android/camera/support/v23/experimental/Experimental;->CANARIES:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "com.google.android.camera.experimental2016.ExperimentalKeys"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 60
    invoke-static {}, Lcom/google/android/camera/support/v23/experimental/Experimental;->getAvailableLibrariesPrivate()[I

    move-result-object v0

    sput-object v0, Lcom/google/android/camera/support/v23/experimental/Experimental;->libraries:[I

    return-void
.end method

.method private static contains([II)Z
    .locals 1

    .prologue
    .line 81
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createOutputConfiguration(Landroid/util/Size;Ljava/lang/Class;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/hardware/camera2/params/OutputConfiguration;"
        }
    .end annotation

    .prologue
    .line 253
    sget-object v0, Lcom/google/android/camera/support/v23/experimental/Experimental;->libraries:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/camera/support/v23/experimental/Experimental;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {p0, p1}, Lcom/google/android/camera/experimental2016/ExperimentalOutputConfigExtensions;->createOutputConfiguration(Landroid/util/Size;Ljava/lang/Class;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static discardFreeBuffers(Landroid/media/ImageReader;)V
    .locals 2

    .prologue
    .line 305
    sget-object v0, Lcom/google/android/camera/support/v23/experimental/Experimental;->libraries:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/camera/support/v23/experimental/Experimental;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {p0}, Lcom/google/android/camera/experimental2016/ExperimentalImageReaderExtensions;->discardFreeBuffers(Landroid/media/ImageReader;)V

    .line 308
    :cond_0
    return-void
.end method

.method public static finishDeferredConfiguration(Landroid/hardware/camera2/CameraCaptureSession;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 217
    sget-object v0, Lcom/google/android/camera/support/v23/experimental/Experimental;->libraries:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/camera/support/v23/experimental/Experimental;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {p0, p1}, Lcom/google/android/camera/experimental2016/ExperimentalSessionExtensions;->finishDeferredConfiguration(Landroid/hardware/camera2/CameraCaptureSession;Ljava/util/List;)V

    .line 221
    :cond_0
    return-void
.end method

.method private static getAvailableLibrariesPrivate()[I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 89
    :goto_0
    sget-object v0, Lcom/google/android/camera/support/v23/experimental/Experimental;->CANARIES:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 91
    :try_start_0
    sget-object v0, Lcom/google/android/camera/support/v23/experimental/Experimental;->CANARIES:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 92
    sget-object v0, Lcom/google/android/camera/support/v23/experimental/Experimental;->CANARIES:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [I

    move-object v0, v1

    .line 99
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v3

    :goto_2
    if-ge v3, v5, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 100
    add-int/lit8 v1, v2, 0x1

    aput v6, v4, v2

    move v2, v1

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 103
    return-object v4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static prepare(Landroid/hardware/camera2/CameraCaptureSession;ZILandroid/view/Surface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-object v0, Lcom/google/android/camera/support/v23/experimental/Experimental;->libraries:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/camera/support/v23/experimental/Experimental;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-static {p0, p2, p3}, Lcom/google/android/camera/experimental2015/ExperimentalSessionExtensions;->prepare(Landroid/hardware/camera2/CameraCaptureSession;ILandroid/view/Surface;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0, p3}, Landroid/hardware/camera2/CameraCaptureSession;->prepare(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public static setDeferredSurface(Landroid/hardware/camera2/params/OutputConfiguration;Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/google/android/camera/support/v23/experimental/Experimental;->libraries:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/camera/support/v23/experimental/Experimental;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {p0, p1}, Lcom/google/android/camera/experimental2016/ExperimentalOutputConfigExtensions;->setDeferredSurface(Landroid/hardware/camera2/params/OutputConfiguration;Landroid/view/Surface;)V

    .line 287
    :cond_0
    return-void
.end method

.method public static setVideoEncodingProfileLevel(Landroid/media/MediaRecorder;II)V
    .locals 2

    .prologue
    .line 322
    sget-object v0, Lcom/google/android/camera/support/v23/experimental/Experimental;->libraries:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/camera/support/v23/experimental/Experimental;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-static {p0, p1, p2}, Lcom/google/android/camera/experimental2016/ExperimentalMediaRecorderExtensions;->setVideoEncodingProfileLevel(Landroid/media/MediaRecorder;II)V

    .line 326
    :cond_0
    return-void
.end method
