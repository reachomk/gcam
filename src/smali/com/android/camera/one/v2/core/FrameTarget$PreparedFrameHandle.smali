.class public interface abstract Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;
.super Ljava/lang/Object;
.source "FrameTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/FrameTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreparedFrameHandle"
.end annotation


# virtual methods
.method public abstract abort()V
.end method

.method public abstract getResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;
.end method

.method public abstract getSurfaces()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end method
