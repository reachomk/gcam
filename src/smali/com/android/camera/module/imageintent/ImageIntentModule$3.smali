.class final Lcom/android/camera/module/imageintent/ImageIntentModule$3;
.super Ljava/lang/Object;
.source "ImageIntentModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/ImageIntentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/ImageIntentModule;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$3;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$3;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->access$300(Lcom/android/camera/module/imageintent/ImageIntentModule;)V

    .line 408
    return-void
.end method
