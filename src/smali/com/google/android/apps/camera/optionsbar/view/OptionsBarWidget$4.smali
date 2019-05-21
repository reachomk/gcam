.class final Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$4;
.super Ljava/lang/Object;
.source "OptionsBarWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$4;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$4;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->closeOptions()V

    .line 316
    return-void
.end method
