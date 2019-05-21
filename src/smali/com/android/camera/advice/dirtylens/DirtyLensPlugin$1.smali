.class final Lcom/android/camera/advice/dirtylens/DirtyLensPlugin$1;
.super Lcom/google/android/apps/camera/advice/Advice$Callback;
.source "DirtyLensPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/advice/dirtylens/DirtyLensPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/advice/dirtylens/DirtyLensPlugin;


# direct methods
.method constructor <init>(Lcom/android/camera/advice/dirtylens/DirtyLensPlugin;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin$1;->this$0:Lcom/android/camera/advice/dirtylens/DirtyLensPlugin;

    invoke-direct {p0}, Lcom/google/android/apps/camera/advice/Advice$Callback;-><init>()V

    return-void
.end method
