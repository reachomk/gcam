.class final Lcom/android/camera/app/CameraActivityControllerInitializer$InitializeOnStart;
.super Ljava/lang/Object;
.source "CameraActivityControllerInitializer.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnStart;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraActivityControllerInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InitializeOnStart"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/app/CameraActivityControllerInitializer;


# direct methods
.method private constructor <init>(Lcom/android/camera/app/CameraActivityControllerInitializer;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerInitializer$InitializeOnStart;->this$0:Lcom/android/camera/app/CameraActivityControllerInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/CameraActivityControllerInitializer;B)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraActivityControllerInitializer$InitializeOnStart;-><init>(Lcom/android/camera/app/CameraActivityControllerInitializer;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerInitializer$InitializeOnStart;->this$0:Lcom/android/camera/app/CameraActivityControllerInitializer;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerInitializer;->access$100(Lcom/android/camera/app/CameraActivityControllerInitializer;)Z

    .line 73
    return-void
.end method
