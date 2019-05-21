.class public Lcom/android/camera/ui/controller/HfrVideoStatechart;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "HfrVideoStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/controller/HfrVideoStatechart$Recording;,
        Lcom/android/camera/ui/controller/HfrVideoStatechart$Ready;
    }
.end annotation


# instance fields
.field private isRecording:Z

.field private optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([S)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/controller/HfrVideoStatechart;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/android/camera/ui/controller/HfrVideoStatechart;->isRecording:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/HfrVideoStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/controller/HfrVideoStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/ui/controller/HfrVideoStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 23
    return-void
.end method

.method public final isRecording()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/camera/ui/controller/HfrVideoStatechart;->isRecording:Z

    return v0
.end method
