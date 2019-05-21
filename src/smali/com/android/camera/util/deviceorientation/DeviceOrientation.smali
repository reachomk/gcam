.class public interface abstract Lcom/android/camera/util/deviceorientation/DeviceOrientation;
.super Ljava/lang/Object;
.source "DeviceOrientation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V
.end method

.method public abstract deviceOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;
.end method

.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract removeListener(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V
.end method
