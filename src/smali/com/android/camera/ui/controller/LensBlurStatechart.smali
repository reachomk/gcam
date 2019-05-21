.class public Lcom/android/camera/ui/controller/LensBlurStatechart;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "LensBlurStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/controller/LensBlurStatechart$Capturing;,
        Lcom/android/camera/ui/controller/LensBlurStatechart$Ready;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "LensBlurStatechart"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/controller/LensBlurStatechart;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/camera/ui/controller/LensBlurStatechart;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/LensBlurStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/controller/LensBlurStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    iput-object v0, p0, Lcom/android/camera/ui/controller/LensBlurStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 25
    return-void
.end method
