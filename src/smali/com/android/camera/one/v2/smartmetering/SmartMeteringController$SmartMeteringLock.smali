.class public interface abstract Lcom/android/camera/one/v2/smartmetering/SmartMeteringController$SmartMeteringLock;
.super Ljava/lang/Object;
.source "SmartMeteringController.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SmartMeteringLock"
.end annotation


# virtual methods
.method public abstract getMeteringAeResults()Lcom/google/googlex/gcam/AeResults;
.end method

.method public abstract getMeteringMetadata()Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;
.end method
