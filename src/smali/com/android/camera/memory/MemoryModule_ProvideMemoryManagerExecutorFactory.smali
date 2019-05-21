.class public final Lcom/android/camera/memory/MemoryModule_ProvideMemoryManagerExecutorFactory;
.super Ljava/lang/Object;
.source "MemoryModule_ProvideMemoryManagerExecutorFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/memory/MemoryModule_ProvideMemoryManagerExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/android/camera/memory/MemoryModule_ProvideMemoryManagerExecutorFactory;

    invoke-direct {v0}, Lcom/android/camera/memory/MemoryModule_ProvideMemoryManagerExecutorFactory;-><init>()V

    sput-object v0, Lcom/android/camera/memory/MemoryModule_ProvideMemoryManagerExecutorFactory;->INSTANCE:Lcom/android/camera/memory/MemoryModule_ProvideMemoryManagerExecutorFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/android/camera/memory/MemoryModule_ProvideMemoryManagerExecutorFactory;->INSTANCE:Lcom/android/camera/memory/MemoryModule_ProvideMemoryManagerExecutorFactory;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1028
    new-instance v0, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    .line 1016
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1015
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 8
    return-object v0
.end method
