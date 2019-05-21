.class public Lcom/android/camera/module/videointent/event/Events$EventOnOpenCameraSucceeded;
.super Ljava/lang/Object;
.source "Events.java"


# instance fields
.field private final camcorder:Lcom/android/camera/camcorder/CamcorderDevice;


# direct methods
.method public constructor <init>(Lcom/android/camera/camcorder/CamcorderDevice;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/module/videointent/event/Events$EventOnOpenCameraSucceeded;->camcorder:Lcom/android/camera/camcorder/CamcorderDevice;

    .line 18
    return-void
.end method


# virtual methods
.method public final getCamcorder()Lcom/android/camera/camcorder/CamcorderDevice;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/module/videointent/event/Events$EventOnOpenCameraSucceeded;->camcorder:Lcom/android/camera/camcorder/CamcorderDevice;

    return-object v0
.end method
