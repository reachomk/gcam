.class public interface abstract Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImage;
.super Ljava/lang/Object;
.source "ManagedImageWriter.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WritableImage"
.end annotation


# virtual methods
.method public abstract submitAndClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method
