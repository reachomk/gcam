.class public final Lcom/google/android/apps/camera/advice/AdviceUiControllerNoOpImpl;
.super Ljava/lang/Object;
.source "AdviceUiControllerNoOpImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/advice/AdviceUiController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final showAdvice(Lcom/google/android/apps/camera/advice/Advice;)Lcom/google/android/apps/camera/advice/AdviceState;
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/apps/camera/advice/AdviceIgnoredState;

    invoke-direct {v0}, Lcom/google/android/apps/camera/advice/AdviceIgnoredState;-><init>()V

    return-object v0
.end method
