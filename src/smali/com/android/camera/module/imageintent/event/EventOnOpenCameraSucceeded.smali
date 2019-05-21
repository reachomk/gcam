.class public Lcom/android/camera/module/imageintent/event/EventOnOpenCameraSucceeded;
.super Ljava/lang/Object;
.source "EventOnOpenCameraSucceeded.java"


# instance fields
.field private final camera:Lcom/android/camera/one/OneCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/OneCamera;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/camera/module/imageintent/event/EventOnOpenCameraSucceeded;->camera:Lcom/android/camera/one/OneCamera;

    .line 10
    return-void
.end method


# virtual methods
.method public final getCamera()Lcom/android/camera/one/OneCamera;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/module/imageintent/event/EventOnOpenCameraSucceeded;->camera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method
