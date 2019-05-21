.class final Lcom/android/camera/device/CameraDeviceState$OnError;
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
    name = "OnError"
.end annotation


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput p1, p0, Lcom/android/camera/device/CameraDeviceState$OnError;->errorCode:I

    .line 281
    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/android/camera/device/CameraDeviceState$OnError;->errorCode:I

    invoke-interface {p1, v0}, Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;->onError(I)V

    .line 285
    return-void
.end method
