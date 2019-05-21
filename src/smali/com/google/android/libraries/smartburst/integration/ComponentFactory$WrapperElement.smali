.class final Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WrapperElement;
.super Ljava/lang/Object;
.source "ComponentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/integration/ComponentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WrapperElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mWrapper:Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WrapperElement;->mClazz:Ljava/lang/Class;

    .line 336
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WrapperElement;->mWrapper:Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;

    .line 337
    return-void
.end method


# virtual methods
.method public final getInstanceWrapper()Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WrapperElement;->mWrapper:Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;

    return-object v0
.end method

.method public final getWrappedClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WrapperElement;->mClazz:Ljava/lang/Class;

    return-object v0
.end method
