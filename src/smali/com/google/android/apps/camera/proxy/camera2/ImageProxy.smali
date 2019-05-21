.class public interface abstract Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
.super Ljava/lang/Object;
.source "ImageProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getAndroidImage()Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle",
            "<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCropRect()Landroid/graphics/Rect;
.end method

.method public abstract getFormat()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getPlanes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getWidth()I
.end method
