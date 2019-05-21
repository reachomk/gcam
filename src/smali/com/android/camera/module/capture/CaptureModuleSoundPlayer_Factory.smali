.class public final Lcom/android/camera/module/capture/CaptureModuleSoundPlayer_Factory;
.super Ljava/lang/Object;
.source "CaptureModuleSoundPlayer_Factory.java"

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
.field private final soundPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/audio/SoundPlayer;",
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
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/audio/SoundPlayer;",
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
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer_Factory;->soundPlayerProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 21
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/audio/SoundPlayer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 9
    .line 1025
    new-instance v2, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer_Factory;->soundPlayerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/audio/SoundPlayer;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer_Factory;->traceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/trace/Trace;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;-><init>(Lcom/android/camera/audio/SoundPlayer;Lcom/android/camera/debug/trace/Trace;)V

    .line 9
    return-object v2
.end method
