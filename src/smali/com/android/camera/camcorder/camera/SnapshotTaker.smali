.class public interface abstract Lcom/android/camera/camcorder/camera/SnapshotTaker;
.super Ljava/lang/Object;
.source "SnapshotTaker.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/SafeCloseable;"
    }
.end annotation


# virtual methods
.method public abstract getImageReaderSurface()Landroid/view/Surface;
.end method

.method public abstract sendSnapshotRequest$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4KREC5O76Q3FEH37AT3LE9IN6EO_(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/android/camera/one/v2/command/CommandExecutorModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/android/camera/one/v2/command/CommandExecutorModule;"
        }
    .end annotation
.end method
