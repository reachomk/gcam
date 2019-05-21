.class public final Lcom/google/android/apps/lightcycle/math/Matrix3x3d;
.super Ljava/lang/Object;
.source "Matrix3x3d.java"


# instance fields
.field public m:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x9

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    .line 18
    return-void
.end method

.method public static mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 24

    .prologue
    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x6

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x4

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    mul-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    mul-double/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v13, 0x3

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v13, 0x6

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    add-double/2addr v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    mul-double/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v13, 0x4

    aget-wide v12, v12, v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v15, 0x4

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    add-double/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v13, 0x5

    aget-wide v12, v12, v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v15, 0x7

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    add-double/2addr v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v15, 0x2

    aget-wide v14, v14, v15

    mul-double/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v15, 0x4

    aget-wide v14, v14, v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x5

    aget-wide v16, v16, v17

    mul-double v14, v14, v16

    add-double/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v15, 0x5

    aget-wide v14, v14, v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x8

    aget-wide v16, v16, v17

    mul-double v14, v14, v16

    add-double/2addr v14, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-wide v16, v16, v17

    mul-double v2, v2, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x7

    aget-wide v16, v16, v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget-wide v18, v18, v19

    mul-double v16, v16, v18

    add-double v2, v2, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x8

    aget-wide v16, v16, v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x6

    aget-wide v18, v18, v19

    mul-double v16, v16, v18

    add-double v16, v16, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    mul-double v2, v2, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x7

    aget-wide v18, v18, v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-wide v20, v20, v21

    mul-double v18, v18, v20

    add-double v2, v2, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x8

    aget-wide v18, v18, v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-wide v20, v20, v21

    mul-double v18, v18, v20

    add-double v18, v18, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-wide v20, v20, v21

    mul-double v2, v2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-wide v20, v20, v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget-wide v22, v22, v23

    mul-double v20, v20, v22

    add-double v2, v2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-wide v20, v20, v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v22, v0

    const/16 v23, 0x8

    aget-wide v22, v22, v23

    mul-double v20, v20, v22

    add-double v20, v20, v2

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v21}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(DDDDDDDDD)V

    .line 307
    return-void
.end method

.method public static mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V
    .locals 10

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-wide v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    iget-wide v4, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    iget-wide v4, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 318
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    iget-wide v4, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x4

    aget-wide v4, v4, v5

    iget-wide v6, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    iget-wide v6, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 319
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x6

    aget-wide v4, v4, v5

    iget-wide v6, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double/2addr v4, v6

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x7

    aget-wide v6, v6, v7

    iget-wide v8, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v7, 0x8

    aget-wide v6, v6, v7

    iget-wide v8, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 320
    iput-wide v0, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    .line 321
    iput-wide v2, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    .line 322
    iput-wide v4, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    .line 323
    return-void
.end method


# virtual methods
.method public final get(II)D
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final set(DDDDDDDDD)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x2

    aput-wide p5, v0, v1

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x3

    aput-wide p7, v0, v1

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x4

    aput-wide p9, v0, v1

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aput-wide p11, v0, v1

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aput-wide p13, v0, v1

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aput-wide p15, v0, v1

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aput-wide p17, v0, v1

    .line 93
    return-void
.end method

.method public final set(IID)V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aput-wide p3, v0, v1

    .line 156
    return-void
.end method

.method public final set(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v2, v1, v4

    aput-wide v2, v0, v4

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v2, v1, v5

    aput-wide v2, v0, v5

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v2, v1, v6

    aput-wide v2, v0, v6

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v2, v1, v7

    aput-wide v2, v0, v7

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v2, v1, v8

    aput-wide v2, v0, v8

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v3, 0x8

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 110
    return-void
.end method

.method public final setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-wide v2, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    aput-wide v2, v0, p1

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x3

    iget-wide v2, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    aput-wide v2, v0, v1

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x6

    iget-wide v2, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    aput-wide v2, v0, v1

    .line 180
    return-void
.end method

.method public final setIdentity()V
    .locals 14

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x6

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v11, 0x7

    const-wide/16 v12, 0x0

    aput-wide v12, v10, v11

    aput-wide v12, v8, v9

    aput-wide v12, v6, v7

    aput-wide v12, v4, v5

    aput-wide v12, v2, v3

    aput-wide v12, v0, v1

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    aput-wide v6, v2, v3

    aput-wide v6, v0, v1

    .line 125
    return-void
.end method

.method public final setSameDiagonal(D)V
    .locals 7

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    aput-wide p1, v4, v5

    aput-wide p1, v2, v3

    aput-wide p1, v0, v1

    .line 134
    return-void
.end method

.method public final setZero()V
    .locals 22

    .prologue
    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v11, 0x4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v13, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v15, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x8

    const-wide/16 v20, 0x0

    aput-wide v20, v18, v19

    aput-wide v20, v16, v17

    aput-wide v20, v14, v15

    aput-wide v20, v12, v13

    aput-wide v20, v10, v11

    aput-wide v20, v8, v9

    aput-wide v20, v6, v7

    aput-wide v20, v4, v5

    aput-wide v20, v2, v3

    .line 117
    return-void
.end method

.method public final transpose(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 10

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    .line 257
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    .line 258
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    .line 259
    iget-object v6, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 260
    iget-object v6, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 261
    iget-object v6, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x6

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 262
    iget-object v6, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x3

    aput-wide v0, v6, v7

    .line 263
    iget-object v0, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x4

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x4

    aget-wide v6, v6, v7

    aput-wide v6, v0, v1

    .line 264
    iget-object v0, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x7

    aget-wide v6, v6, v7

    aput-wide v6, v0, v1

    .line 265
    iget-object v0, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aput-wide v2, v0, v1

    .line 266
    iget-object v0, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aput-wide v4, v0, v1

    .line 267
    iget-object v0, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v3, 0x8

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 268
    return-void
.end method
