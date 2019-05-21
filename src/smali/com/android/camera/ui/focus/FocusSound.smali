.class public final Lcom/android/camera/ui/focus/FocusSound;
.super Ljava/lang/Object;
.source "FocusSound.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# instance fields
.field private final closeAfterUse:Lcom/google/android/apps/camera/async/SafeCloseable;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusSound;->closeAfterUse:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 24
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
