.class final Lcom/android/camera/memory/MemoryManager$1;
.super Ljava/lang/Object;
.source "MemoryManager.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/memory/MemoryManager;->registerFeature(Lcom/android/camera/memory/FeatureMemoryUsage;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/memory/MemoryManager;


# direct methods
.method constructor <init>(Lcom/android/camera/memory/MemoryManager;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/camera/memory/MemoryManager$1;->this$0:Lcom/android/camera/memory/MemoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 104
    .line 1107
    iget-object v0, p0, Lcom/android/camera/memory/MemoryManager$1;->this$0:Lcom/android/camera/memory/MemoryManager;

    invoke-static {v0}, Lcom/android/camera/memory/MemoryManager;->access$000(Lcom/android/camera/memory/MemoryManager;)V

    .line 104
    return-void
.end method
