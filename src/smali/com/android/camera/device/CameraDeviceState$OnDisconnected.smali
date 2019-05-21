.class final Lcom/android/camera/device/CameraDeviceState$OnDisconnected;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"

# interfaces
.implements Lcom/android/camera/device/CameraDeviceState$StateTransition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/CameraDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnDisconnected"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/device/CameraDeviceState;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/camera/device/CameraDeviceState$OnDisconnected;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V
    .locals 0

    .prologue
    .line 273
    invoke-interface {p1}, Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;->onDisconnected()V

    .line 274
    return-void
.end method
