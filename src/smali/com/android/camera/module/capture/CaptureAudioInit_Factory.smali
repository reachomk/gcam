.class public final Lcom/android/camera/module/capture/CaptureAudioInit_Factory;
.super Ljava/lang/Object;
.source "CaptureAudioInit_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final captureModuleSoundPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private final traceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureAudioInit_Factory;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureAudioInit_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 21
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 8
    .line 1025
    new-instance v2, Lcom/android/camera/module/capture/CaptureAudioInit;

    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureAudioInit_Factory;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureAudioInit_Factory;->traceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/trace/Trace;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/module/capture/CaptureAudioInit;-><init>(Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/debug/trace/Trace;)V

    .line 8
    return-object v2
.end method