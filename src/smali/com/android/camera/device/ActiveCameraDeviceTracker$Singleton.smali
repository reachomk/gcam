.class final Lcom/android/camera/device/ActiveCameraDeviceTracker$Singleton;
.super Ljava/lang/Object;
.source "ActiveCameraDeviceTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/ActiveCameraDeviceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Singleton"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/camera/device/ActiveCameraDeviceTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-direct {v0}, Lcom/android/camera/device/ActiveCameraDeviceTracker;-><init>()V

    sput-object v0, Lcom/android/camera/device/ActiveCameraDeviceTracker$Singleton;->INSTANCE:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    return-void
.end method
