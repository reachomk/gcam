.class public interface abstract Lcom/android/camera/util/lifetime/ActivityLifetime;
.super Ljava/lang/Object;
.source "ActivityLifetime.java"


# virtual methods
.method public abstract getInstanceLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;
.end method

.method public abstract getVisibleLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;
.end method

.method public abstract isForegroundLifetimeClosed()Z
.end method

.method public abstract isInstanceLifetimeClosed()Z
.end method

.method public abstract isVisibleLifetimeClosed()Z
.end method
